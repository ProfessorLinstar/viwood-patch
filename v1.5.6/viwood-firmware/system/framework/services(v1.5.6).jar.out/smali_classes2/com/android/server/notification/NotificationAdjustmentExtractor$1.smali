.class public Lcom/android/server/notification/NotificationAdjustmentExtractor$1;
.super Lcom/android/server/notification/RankingReconsideration;
.source "NotificationAdjustmentExtractor.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationAdjustmentExtractor;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationAdjustmentExtractor;Ljava/lang/String;J)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/server/notification/NotificationAdjustmentExtractor$1;->this$0:Lcom/android/server/notification/NotificationAdjustmentExtractor;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/notification/RankingReconsideration;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/server/notification/NotificationAdjustmentExtractor$1;->this$0:Lcom/android/server/notification/NotificationAdjustmentExtractor;

    invoke-static {p0}, Lcom/android/server/notification/NotificationAdjustmentExtractor;->-$$Nest$fgetmGroupHelper(Lcom/android/server/notification/NotificationAdjustmentExtractor;)Lcom/android/server/notification/GroupHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->onChannelUpdated(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public work()V
    .locals 0

    .line 0
    return-void
.end method
