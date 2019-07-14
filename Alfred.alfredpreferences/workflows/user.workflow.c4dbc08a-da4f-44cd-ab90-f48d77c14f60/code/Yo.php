<?php
namespace WillFarrell\AlfredPkgMan;

require_once('Cache.php');
require_once('Repo.php');

class Yo extends Repo
{
    protected $id         = 'yo';
    protected $kind       = 'generators';
    protected $url        = 'https://npms.io';
    protected $search_url = 'https://api.npms.io/v2/search?q=';

    public function search($query)
    {
        if (!$this->hasMinQueryLength($query)) {
            return $this->xml();
        }

        $this->pkgs = $this->cache->get_query_json(
            $this->id,
            $query,
            "{$this->search_url}{$query} keywords:yeoman-generator"
        )->results;

        foreach ($this->pkgs as $pkg) {
            $title = str_replace('generator-', '', $pkg->package->name); // remove generator- from title

           // add version to title
            if (isset($pkg->version)) {
                $title .= " v{$pkg->package->version}";
            }

            // add author to title
            if (isset($pkg->author)) {
                $title .= " by {$pkg->package->author->name}";
            }

            $this->cache->w->result(
                $pkg->package->name,
                $this->makeArg($pkg->package->name, $pkg->package->links->npm),
                $title,
                "{$pkg->package->version} - {$pkg->package->description}",
                "icon-cache/{$this->id}.png"
            );

            // only search till max return reached
            if (count($this->cache->w->results()) == $this->max_return) {
                break;
            }
        }

        $this->noResults($query, "{$this->url}/search?q={$query}+keywords:yeoman-generator");

        return $this->xml();
    }
}

// Test code, uncomment to debug this script from the command-line
// $repo = new Yo();
// echo $repo->search('ang');
