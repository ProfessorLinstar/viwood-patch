.class public final Lcom/android/server/job/JobServiceContext$JobCallback;
.super Landroid/app/job/IJobCallback$Stub;
.source "JobServiceContext.java"


# instance fields
.field public mStoppedReason:Ljava/lang/String;

.field public mStoppedTime:J

.field public final synthetic this$0:Lcom/android/server/job/JobServiceContext;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobServiceContext;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-direct {p0}, Landroid/app/job/IJobCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acknowledgeGetTransferredDownloadBytesMessage(IIJ)V
    .locals 6

    .line 264
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/job/JobServiceContext;->-$$Nest$mdoAcknowledgeGetTransferredDownloadBytesMessage(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/JobServiceContext$JobCallback;IIJ)V

    return-void
.end method

.method public acknowledgeGetTransferredUploadBytesMessage(IIJ)V
    .locals 6

    .line 270
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/job/JobServiceContext;->-$$Nest$mdoAcknowledgeGetTransferredUploadBytesMessage(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/JobServiceContext$JobCallback;IIJ)V

    return-void
.end method

.method public acknowledgeStartMessage(IZ)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->doAcknowledgeStartMessage(Lcom/android/server/job/JobServiceContext$JobCallback;IZ)V

    return-void
.end method

.method public acknowledgeStopMessage(IZ)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->doAcknowledgeStopMessage(Lcom/android/server/job/JobServiceContext$JobCallback;IZ)V

    return-void
.end method

.method public completeWork(II)Z
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->doCompleteWork(Lcom/android/server/job/JobServiceContext$JobCallback;II)Z

    move-result p0

    return p0
.end method

.method public dequeueWork(I)Landroid/app/job/JobWorkItem;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/job/JobServiceContext;->doDequeueWork(Lcom/android/server/job/JobServiceContext$JobCallback;I)Landroid/app/job/JobWorkItem;

    move-result-object p0

    return-object p0
.end method

.method public handleAbandonedJob(I)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/job/JobServiceContext;->doHandleAbandonedJob(Lcom/android/server/job/JobServiceContext$JobCallback;I)V

    return-void
.end method

.method public jobFinished(IZ)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->doJobFinished(Lcom/android/server/job/JobServiceContext$JobCallback;IZ)V

    return-void
.end method

.method public setNotification(IILandroid/app/Notification;I)V
    .locals 6

    .line 318
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/job/JobServiceContext;->-$$Nest$mdoSetNotification(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/JobServiceContext$JobCallback;IILandroid/app/Notification;I)V

    return-void
.end method

.method public updateEstimatedNetworkBytes(ILandroid/app/job/JobWorkItem;JJ)V
    .locals 8

    .line 306
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/job/JobServiceContext;->-$$Nest$mdoUpdateEstimatedNetworkBytes(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/JobServiceContext$JobCallback;ILandroid/app/job/JobWorkItem;JJ)V

    return-void
.end method

.method public updateTransferredNetworkBytes(ILandroid/app/job/JobWorkItem;JJ)V
    .locals 8

    .line 312
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/job/JobServiceContext;->-$$Nest$mdoUpdateTransferredNetworkBytes(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/JobServiceContext$JobCallback;ILandroid/app/job/JobWorkItem;JJ)V

    return-void
.end method
