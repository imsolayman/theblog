<div class="widget tags">
    <header>
        <h3 class="h6">Tags</h3>
    </header>
    <ul class="list-inline">
        <?php
        $query = "SELECT tags FROM list_posts LIMIT 5";
        $tags = $database->select($query);
        if($tags){
            while($result = $tags->fetch_assoc()){
                ?>
                <li class="list-inline-item"><a href="#" class="tag">#<?php echo $result['tags']; ?></a></li>
                <?php
            }
        }
        ?>
    </ul>
</div>