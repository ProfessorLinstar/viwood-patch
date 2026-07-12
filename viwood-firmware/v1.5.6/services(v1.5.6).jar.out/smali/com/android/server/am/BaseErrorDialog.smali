.class public Lcom/android/server/am/BaseErrorDialog;
.super Landroid/app/AlertDialog;
.source "BaseErrorDialog.java"


# instance fields
.field public mConsuming:Z

.field public mHandler:Landroid/os/Handler;

.field public mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fputmConsuming(Lcom/android/server/am/BaseErrorDialog;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/am/BaseErrorDialog;->mConsuming:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetEnabled(Lcom/android/server/am/BaseErrorDialog;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BaseErrorDialog;->setEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x1030406

    .line 42
    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/android/server/am/BaseErrorDialog;->mConsuming:Z

    .line 111
    new-instance v0, Lcom/android/server/am/BaseErrorDialog$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/BaseErrorDialog$2;-><init>(Lcom/android/server/am/BaseErrorDialog;)V

    iput-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mHandler:Landroid/os/Handler;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 45
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 46
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x20000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 48
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 49
    const-string v0, "Error Dialog"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public closeDialog()V
    .locals 1

    .line 126
    iget-boolean v0, p0, Landroid/app/AlertDialog;->mCancelable:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/android/server/am/BaseErrorDialog;->mConsuming:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 93
    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 4

    .line 55
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 56
    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 57
    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 58
    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/android/server/am/BaseErrorDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BaseErrorDialog$1;-><init>(Lcom/android/server/am/BaseErrorDialog;)V

    iput-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/BaseErrorDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 74
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 75
    iget-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 77
    :try_start_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/BaseErrorDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterReceiver threw exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v1, "BaseErrorDialog"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/android/server/am/BaseErrorDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    const v0, 0x1020019

    .line 97
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    const v0, 0x102001a

    .line 101
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    const v0, 0x102001b

    .line 105
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    if-eqz p0, :cond_2

    .line 107
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    return-void
.end method
