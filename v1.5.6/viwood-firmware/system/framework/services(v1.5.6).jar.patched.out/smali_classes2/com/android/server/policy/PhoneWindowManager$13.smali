.class public Lcom/android/server/policy/PhoneWindowManager$13;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 6267
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 6270
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6271
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    const-string v0, "android.intent.extra.DOCK_STATE"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayPolicy;->setDockMode(I)V

    goto :goto_0

    .line 6275
    :cond_0
    :try_start_0
    const-string/jumbo p1, "uimode"

    .line 6276
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 6275
    invoke-static {p1}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object p1

    .line 6277
    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-interface {p1}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result p1

    iput p1, p2, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6281
    :catch_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 6282
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$13;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    return-void
.end method
