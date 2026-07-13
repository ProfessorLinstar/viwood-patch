.class public final synthetic Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessErrorStateRecord;

.field public final synthetic f$1:Lcom/android/internal/os/anr/AnrLatencyTracker;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/ProcessErrorStateRecord;

    iput-object p2, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$1:Lcom/android/internal/os/anr/AnrLatencyTracker;

    iput-boolean p3, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$2:Z

    iput-boolean p4, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$3:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/ProcessErrorStateRecord;

    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$1:Lcom/android/internal/os/anr/AnrLatencyTracker;

    iget-boolean v2, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$2:Z

    iget-boolean p0, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$3:Z

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/am/ProcessErrorStateRecord;->$r8$lambda$DQtvmgZQqXnoidXVW34IrZY3fRc(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;ZZ)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
