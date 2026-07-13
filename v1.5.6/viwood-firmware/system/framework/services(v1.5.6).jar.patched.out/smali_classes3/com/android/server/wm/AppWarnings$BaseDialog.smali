.class public abstract Lcom/android/server/wm/AppWarnings$BaseDialog;
.super Ljava/lang/Object;
.source "AppWarnings.java"


# instance fields
.field public mCloseReceiver:Landroid/content/BroadcastReceiver;

.field public mDialog:Landroid/app/AlertDialog;

.field public final mManager:Lcom/android/server/wm/AppWarnings;

.field public final mPackageName:Ljava/lang/String;

.field public final mUiContext:Landroid/content/Context;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mManager:Lcom/android/server/wm/AppWarnings;

    .line 819
    iput-object p2, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUiContext:Landroid/content/Context;

    .line 820
    iput-object p3, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    .line 821
    iput p4, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUserId:I

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 846
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mCloseReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 848
    iget-object v2, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUiContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 849
    iput-object v1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mCloseReceiver:Landroid/content/BroadcastReceiver;

    .line 851
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 852
    iput-object v1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public show()V
    .locals 4

    .line 826
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mCloseReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 828
    new-instance v0, Lcom/android/server/wm/AppWarnings$BaseDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppWarnings$BaseDialog$1;-><init>(Lcom/android/server/wm/AppWarnings$BaseDialog;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mCloseReceiver:Landroid/content/BroadcastReceiver;

    .line 836
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUiContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 840
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWarnings"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
