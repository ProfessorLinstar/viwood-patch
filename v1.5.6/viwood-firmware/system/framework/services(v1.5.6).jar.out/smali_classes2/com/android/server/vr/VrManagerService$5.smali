.class public Lcom/android/server/vr/VrManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "VrManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0

    .line 815
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$5;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 818
    const-string p1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 819
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$5;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p0}, Lcom/android/server/vr/VrManagerService;->-$$Nest$msetUserUnlocked(Lcom/android/server/vr/VrManagerService;)V

    :cond_0
    return-void
.end method
