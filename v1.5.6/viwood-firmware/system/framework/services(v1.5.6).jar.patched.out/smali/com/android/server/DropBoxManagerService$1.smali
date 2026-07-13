.class public Lcom/android/server/DropBoxManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "DropBoxManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/DropBoxManagerService;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$1;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 160
    iget-object p1, p0, Lcom/android/server/DropBoxManagerService$1;->this$0:Lcom/android/server/DropBoxManagerService;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/server/DropBoxManagerService;->-$$Nest$fputmCachedQuotaUptimeMillis(Lcom/android/server/DropBoxManagerService;J)V

    .line 165
    new-instance p1, Lcom/android/server/DropBoxManagerService$1$1;

    invoke-direct {p1, p0}, Lcom/android/server/DropBoxManagerService$1$1;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    .line 174
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
