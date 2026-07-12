.class public final Lcom/android/server/supervision/SupervisionService$Lifecycle$ProfileOwnerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SupervisionService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/supervision/SupervisionService$Lifecycle;


# direct methods
.method public constructor <init>(Lcom/android/server/supervision/SupervisionService$Lifecycle;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/android/server/supervision/SupervisionService$Lifecycle$ProfileOwnerBroadcastReceiver;->this$0:Lcom/android/server/supervision/SupervisionService$Lifecycle;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/supervision/SupervisionService$Lifecycle;Lcom/android/server/supervision/SupervisionService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/supervision/SupervisionService$Lifecycle$ProfileOwnerBroadcastReceiver;-><init>(Lcom/android/server/supervision/SupervisionService$Lifecycle;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 418
    iget-object p1, p0, Lcom/android/server/supervision/SupervisionService$Lifecycle$ProfileOwnerBroadcastReceiver;->this$0:Lcom/android/server/supervision/SupervisionService$Lifecycle;

    invoke-static {p1}, Lcom/android/server/supervision/SupervisionService$Lifecycle;->-$$Nest$fgetmSupervisionService(Lcom/android/server/supervision/SupervisionService$Lifecycle;)Lcom/android/server/supervision/SupervisionService;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/server/supervision/SupervisionService;->-$$Nest$msyncStateWithDevicePolicyManager(Lcom/android/server/supervision/SupervisionService;I)V

    return-void
.end method
