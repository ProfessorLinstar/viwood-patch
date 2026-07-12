.class public Lcom/android/server/dreams/DreamController$DreamRecord$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "DreamController.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/dreams/DreamController$DreamRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 1

    .line 476
    iget-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object p1, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {p1}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmHandler(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController$DreamRecord;->-$$Nest$fgetmStopPreviousDreamsIfNeeded(Lcom/android/server/dreams/DreamController$DreamRecord;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 477
    iget-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-object p1, p1, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {p1}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmHandler(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$1;->this$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    invoke-static {p0}, Lcom/android/server/dreams/DreamController$DreamRecord;->-$$Nest$fgetmReleaseWakeLockIfNeeded(Lcom/android/server/dreams/DreamController$DreamRecord;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
