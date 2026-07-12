.class public Lcom/android/server/DropBoxManagerService$3;
.super Landroid/database/ContentObserver;
.source "DropBoxManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$3;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 437
    iget-object p1, p0, Lcom/android/server/DropBoxManagerService$3;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {p1}, Lcom/android/server/DropBoxManagerService;->-$$Nest$fgetmReceiver(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$3;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
