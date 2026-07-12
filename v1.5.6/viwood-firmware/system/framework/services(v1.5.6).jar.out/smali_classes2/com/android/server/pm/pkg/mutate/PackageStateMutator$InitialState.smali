.class public Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;
.super Ljava/lang/Object;
.source "PackageStateMutator.java"


# instance fields
.field public final mPackageSequence:I

.field public final mStateSequence:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPackageSequence(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;->mPackageSequence:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStateSequence(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;->mStateSequence:J

    return-wide v0
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput p1, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;->mPackageSequence:I

    .line 137
    iput-wide p2, p0, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;->mStateSequence:J

    return-void
.end method
