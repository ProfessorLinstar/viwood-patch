.class public Lcom/android/server/wm/AppWarnings$BaseDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "AppWarnings.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AppWarnings$BaseDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWarnings$BaseDialog;)V
    .locals 0

    .line 828
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog$1;->this$0:Lcom/android/server/wm/AppWarnings$BaseDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 831
    const-string p1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 832
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings$BaseDialog$1;->this$0:Lcom/android/server/wm/AppWarnings$BaseDialog;

    iget-object p1, p1, Lcom/android/server/wm/AppWarnings$BaseDialog;->mManager:Lcom/android/server/wm/AppWarnings;

    invoke-static {p1}, Lcom/android/server/wm/AppWarnings;->-$$Nest$fgetmUiHandler(Lcom/android/server/wm/AppWarnings;)Lcom/android/server/wm/AppWarnings$UiHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog$1;->this$0:Lcom/android/server/wm/AppWarnings$BaseDialog;

    iget-object p2, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mPackageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/wm/AppWarnings$BaseDialog;->mUserId:I

    invoke-virtual {p1, p2, p0}, Lcom/android/server/wm/AppWarnings$UiHandler;->hideDialogsForPackage(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
