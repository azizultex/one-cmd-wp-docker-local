<?php 
/*
Plugin Name: Auto Login
Plugin URI: https:wppool.dev
Description: Auto login to wp-admin for WPPOOL QA team
Version: 1.0.0
Author: WPPOOL
*/

function automatic_user_login(){

    // Already logged in, not necessary
    if (is_user_logged_in()) {
        wp_redirect(admin_url());
        return;
    }

    // auto login for wppool admin user 

    $user = get_user_by('login', 'wppool');

    $user_id = $user->ID;
    wp_set_current_user($user_id, $user->user_login);
    wp_set_auth_cookie($user_id, true);
    do_action('wp_login', $user->user_login);
    wp_redirect(admin_url());

}

add_action('wp_login', 'automatic_user_login');