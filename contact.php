<?php include 'inc/header.php'; ?>
<div class="container">
    <div class="row">
        <!-- Contact form -->
        <main class="post blog-post col-lg-8 col-md-10 mx-auto">
            <div class="container">
                <div class="contact-form">
                    <p>Want to get in touch? Fill out the form below to send me a message and I will get back to you as soon as possible!</p>
                    <!-- Contact Form - Enter your email address on line 19 of the mail/contact_me.php file to make this form work. -->
                    <!-- WARNING: Some web hosts do not allow emails to be sent through forms to common mail hosts like Gmail or Yahoo. It's recommended that you use a private domain email address! -->
                    <!-- To use the contact form, your site must be on a live web host with PHP! The form will not work locally! -->
                    <?php
                        if(isset($_POST['contact'])){
                            $name = $format->validation($_POST['name']);
                            $email = $format->validation($_POST['email']);
                            $subject = $format->validation($_POST['subject']);
                            $description = $format->validation($_POST['description']);
                            $name = mysqli_real_escape_string($database->link, $name);
                            $email = mysqli_real_escape_string($database->link, $email);
                            $subject = mysqli_real_escape_string($database->link, $subject);
                            $description = mysqli_real_escape_string($database->link, $description);
                            if($name == "" || $email == "" || $subject == "" || $description == ""){
                                echo "<button class='btn btn-danger'>Error ! Field must not be empty</button>";
                            }elseif(!filter_var($email, FILTER_VALIDATE_EMAIL)){
                                echo "<button class='btn btn-danger'>Error ! Please enter a valid email address</button>";
                            }else {
                                $query = "INSERT INTO list_contact (name, email, subject, description) VALUES ('$name', '$email', '$subject', '$description') ";
                                $insert_row = $database->insert($query);
                                if ($insert_row) {
                                    echo "<script>alert('Thanks ! Message sent');</script>";
                                } else {
                                    echo "<button class='btn btn-danger'>Error ! Message not Sent</button>";
                                }
                            }
                        }
                    ?>
                    <form name="sentMessage" id="contactForm" novalidate="" action="" method="post">
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls">
                                <label>Name</label>
                                <input type="text" name="name" class="form-control" placeholder="Name" id="name" required="" data-validation-required-message="Please enter your name.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls">
                                <label>Email Address</label>
                                <input type="email" name="email" class="form-control" placeholder="Email Address" id="email" required="" data-validation-required-message="Please enter your email address.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Subject</label>
                                <input type="text" name="subject" class="form-control" placeholder="Subject" id="subject" required="" data-validation-required-message="Please enter your subject.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls">
                                <label>Message</label>
                                <textarea rows="5" name="description" class="form-control" placeholder="Message" id="message" required="" data-validation-required-message="Please enter a message."></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <br>
                        <div id="success"></div>
                        <div class="form-group">
                            <button type="submit" name="contact" class="btn btn-primary" id="sendMessageButton">Send</button>
                        </div>
                    </form>
                </div>
            </div>
        </main>
    </div>
</div>
<?php include 'inc/footer.php'; ?>