.class public final synthetic Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AnrHelper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/internal/os/TimeoutRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AnrHelper;ILcom/android/internal/os/TimeoutRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/AnrHelper;

    iput p2, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;->f$2:Lcom/android/internal/os/TimeoutRecord;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/AnrHelper;

    iget v1, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;->f$1:I

    iget-object p0, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda2;->f$2:Lcom/android/internal/os/TimeoutRecord;

    invoke-static {v0, v1, p0}, Lcom/android/server/am/AnrHelper;->$r8$lambda$o4U1b8DdepzPilDk5ASRfiFAv34(Lcom/android/server/am/AnrHelper;ILcom/android/internal/os/TimeoutRecord;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
