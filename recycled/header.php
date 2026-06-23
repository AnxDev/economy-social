<style>
header {
    background: var(--surface);
    border-bottom: 1px solid #ece4d3;
    padding: 0.6rem 0;
    position: sticky;
    top: 0;
    z-index: 1000;
}

header nav ul {
    display: flex;
    align-items: center;
    justify-content: space-between;
    list-style: none;
    max-width: 1000px;
    margin: 0 auto;
    padding: 0 1rem;
}

.nav-menu {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    flex: 1;
}

header nav ul li a {
    color: var(--text-muted);
    font-size: 0.85rem;
    font-weight: 500;
    padding: 0.4rem 0.6rem;
    border-radius: var(--radius-sm);
    text-decoration: none;
    white-space: nowrap;
}

header nav ul li a:hover {
    background: var(--accent-glow);
    color: var(--text);
}

header nav ul li a.current {
    background: var(--accent-glow);
    color: var(--accent-dim);
}

.search-item {
    flex: 0 0 auto;
    width: 180px;
}

.search-form {
    display: flex;
    align-items: center;
    background: #fcfaf5;
    border: 1px solid #e0d6bf;
    border-radius: var(--radius-sm);
    padding: 0.2rem 0.5rem;
    transition: border-color var(--transition);
}

.search-form:focus-within {
    border-color: var(--accent);
}

.search-form input {
    background: none;
    border: none;
    color: var(--text);
    padding: 0.3rem;
    font-size: 0.8rem;
    outline: none;
    width: 100%;
}

.search-form input::placeholder {
    color: #b5a98a;
}

.search-btn {
    color: var(--text-muted);
    transition: color var(--transition);
}

.search-btn:hover {
    color: var(--accent-dim);
}

@media (max-width: 650px) {
    header nav ul {
        flex-direction: column;
        gap: 0.8rem;
    }

    .nav-menu {
        justify-content: center;
        width: 100%;
    }

    .search-item {
        display: none;
    }
}
</style>

<?php 
    $current_page = basename($_SERVER['PHP_SELF']);
?>

<header>
    <nav>
        <ul>
            <div class="nav-menu">
                <li><a href="home.php" class="<?php echo $current_page == 'home.php' ? 'current' : ''; ?>">Home</a></li>
                <li><a href="feed.php" class="<?php echo $current_page == 'feed.php' ? 'current' : ''; ?>">Feed</a></li>
                <li><a href="leaderboard.php" class="<?php echo $current_page == 'leaderboard.php' ? 'current' : ''; ?>">Classifica</a></li>
                <li><a href="../backend/logout.php">Logout</a></li>
            </div>
            
            <li class="search-item">
                <form action="search.php" method="get" class="search-form">
                    <input name="search" type="text" placeholder="Cerca utenti..." autocomplete="off">
                    <button type="submit" class="search-btn" style="background:none; border:none; cursor:pointer;">🔍</button>
                </form>
            </li>
        </ul>
    </nav>
</header>