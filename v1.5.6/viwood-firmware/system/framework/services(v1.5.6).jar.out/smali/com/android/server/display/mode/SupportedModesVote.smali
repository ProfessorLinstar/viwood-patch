.class public Lcom/android/server/display/mode/SupportedModesVote;
.super Ljava/lang/Object;
.source "SupportedModesVote.java"

# interfaces
.implements Lcom/android/server/display/mode/Vote;


# instance fields
.field public final mModeIds:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/mode/SupportedModesVote;->mModeIds:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 49
    :cond_0
    instance-of v0, p1, Lcom/android/server/display/mode/SupportedModesVote;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/server/display/mode/SupportedModesVote;

    .line 50
    iget-object p0, p0, Lcom/android/server/display/mode/SupportedModesVote;->mModeIds:Ljava/util/List;

    iget-object p1, p1, Lcom/android/server/display/mode/SupportedModesVote;->mModeIds:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/server/display/mode/SupportedModesVote;->mModeIds:Ljava/util/List;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SupportedModesVote{ mModeIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/mode/SupportedModesVote;->mModeIds:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateSummary(Lcom/android/server/display/mode/VoteSummary;)V
    .locals 1

    .line 34
    iget-object v0, p1, Lcom/android/server/display/mode/VoteSummary;->supportedModeIds:Ljava/util/List;

    if-nez v0, :cond_0

    .line 35
    iget-object p0, p0, Lcom/android/server/display/mode/SupportedModesVote;->mModeIds:Ljava/util/List;

    iput-object p0, p1, Lcom/android/server/display/mode/VoteSummary;->supportedModeIds:Ljava/util/List;

    return-void

    .line 37
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/mode/SupportedModesVote;->mModeIds:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    return-void
.end method
