.class public final synthetic Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda4;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda4;->f$1:Ljava/util/Set;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->$r8$lambda$tClXJ7lHT7SDttp6mit80Rp9sTM(Ljava/lang/String;Ljava/util/Set;Lcom/android/server/am/BroadcastRecord;I)Z

    move-result p0

    return p0
.end method
