.class public Lcom/android/server/UiModeManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "UiModeManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 316
    const-string p1, "android.intent.extra.DOCK_STATE"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 318
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$4;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0, p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mupdateDockState(Lcom/android/server/UiModeManagerService;I)V

    return-void
.end method
