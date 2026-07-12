.class public final Lcom/android/server/pm/UserManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "UserManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Handler;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$SettingsObserver;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 599
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 604
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->-$$Nest$smisAutoLockForPrivateSpaceEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 605
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 606
    const-string/jumbo p2, "private_space_auto_lock"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 607
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$SettingsObserver;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object p1

    .line 608
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$SettingsObserver;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 611
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetMainUserIdUnchecked(Lcom/android/server/pm/UserManagerService;)I

    move-result v0

    const/4 v1, 0x2

    .line 608
    invoke-static {p1, p2, v1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 612
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Auto-lock settings changed to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UserManagerService"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$SettingsObserver;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->setOrUpdateAutoLockPreferenceForPrivateProfile(I)V

    :cond_0
    return-void
.end method
