.class public Lcom/android/server/dreams/DreamManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "DreamManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$2;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$2;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmBatteryManagerInternal(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/BatteryManagerInternal;

    move-result-object p1

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fputmIsCharging(Lcom/android/server/dreams/DreamManagerService;Z)V

    return-void
.end method
