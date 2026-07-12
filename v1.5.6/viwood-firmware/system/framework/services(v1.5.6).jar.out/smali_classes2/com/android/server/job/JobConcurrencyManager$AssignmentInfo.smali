.class final Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;
.super Ljava/lang/Object;
.source "JobConcurrencyManager.java"


# instance fields
.field public minPreferredUidOnlyWaitingTimeMs:J

.field public numRunningEj:I

.field public numRunningImmediacyPrivileged:I

.field public numRunningReg:I

.field public numRunningUi:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2957
    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->minPreferredUidOnlyWaitingTimeMs:J

    const/4 v0, 0x0

    .line 2958
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningImmediacyPrivileged:I

    .line 2959
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningUi:I

    .line 2960
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningEj:I

    .line 2961
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningReg:I

    return-void
.end method
