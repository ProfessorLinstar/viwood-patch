.class public Lcom/android/server/display/mode/RejectedModesVote;
.super Ljava/lang/Object;
.source "RejectedModesVote.java"

# interfaces
.implements Lcom/android/server/display/mode/Vote;


# instance fields
.field public final mModeIds:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/mode/RejectedModesVote;->mModeIds:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RejectedModesVote{ mModeIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/mode/RejectedModesVote;->mModeIds:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateSummary(Lcom/android/server/display/mode/VoteSummary;)V
    .locals 0

    .line 33
    iget-object p1, p1, Lcom/android/server/display/mode/VoteSummary;->rejectedModeIds:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/server/display/mode/RejectedModesVote;->mModeIds:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
