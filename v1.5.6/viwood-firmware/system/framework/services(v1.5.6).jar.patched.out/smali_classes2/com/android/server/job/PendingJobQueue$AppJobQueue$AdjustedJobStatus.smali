.class public Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;
.super Ljava/lang/Object;
.source "PendingJobQueue.java"


# instance fields
.field public adjustedEnqueueTime:J

.field public job:Lcom/android/server/job/controllers/JobStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/job/PendingJobQueue-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 257
    iput-wide v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    return-void
.end method
