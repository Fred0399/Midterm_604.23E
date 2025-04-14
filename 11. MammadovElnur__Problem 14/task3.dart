class Notification { String title; String message; 
                    Notification(this.title, this.message); 
                    void send() { print('[$title]: $message'); } }

void main() {

  var notification = Notification('Update Available', 'Version 3.0 is now ready to install.');

  notification.send();
}
