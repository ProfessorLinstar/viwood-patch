.class public final synthetic Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->$r8$lambda$5h92AEV1NSkQ9xrbiDDH3YtJvPw(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;I)Z

    move-result p0

    return p0
.end method
