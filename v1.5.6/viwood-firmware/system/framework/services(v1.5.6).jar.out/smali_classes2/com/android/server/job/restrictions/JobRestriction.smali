.class public abstract Lcom/android/server/job/restrictions/JobRestriction;
.super Ljava/lang/Object;
.source "JobRestriction.java"


# instance fields
.field public final mInternalReason:I

.field public final mPendingReason:I

.field public final mService:Lcom/android/server/job/JobSchedulerService;

.field public final mStopReason:I


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;III)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 47
    iput p3, p0, Lcom/android/server/job/restrictions/JobRestriction;->mPendingReason:I

    .line 48
    iput p2, p0, Lcom/android/server/job/restrictions/JobRestriction;->mStopReason:I

    .line 49
    iput p4, p0, Lcom/android/server/job/restrictions/JobRestriction;->mInternalReason:I

    return-void
.end method


# virtual methods
.method public abstract dumpConstants(Landroid/util/IndentingPrintWriter;)V
.end method

.method public dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final getInternalReason()I
    .locals 0

    .line 90
    iget p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mInternalReason:I

    return p0
.end method

.method public final getPendingReason()I
    .locals 0

    .line 80
    iget p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mPendingReason:I

    return p0
.end method

.method public final getStopReason()I
    .locals 0

    .line 86
    iget p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mStopReason:I

    return p0
.end method

.method public abstract isJobRestricted(Lcom/android/server/job/controllers/JobStatus;I)Z
.end method

.method public abstract onSystemServicesReady()V
.end method
