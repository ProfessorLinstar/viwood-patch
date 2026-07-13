.class public final Lcom/android/server/notification/NotificationHistoryFilter$Builder;
.super Ljava/lang/Object;
.source "NotificationHistoryFilter.java"


# instance fields
.field public mChannel:Ljava/lang/String;

.field public mNotificationCount:I

.field public mPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mPackage:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mChannel:Ljava/lang/String;

    const v0, 0x7fffffff

    .line 82
    iput v0, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mNotificationCount:I

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/notification/NotificationHistoryFilter;
    .locals 2

    .line 118
    new-instance v0, Lcom/android/server/notification/NotificationHistoryFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationHistoryFilter;-><init>(Lcom/android/server/notification/NotificationHistoryFilter-IA;)V

    .line 119
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationHistoryFilter;->-$$Nest$fputmPackage(Lcom/android/server/notification/NotificationHistoryFilter;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mChannel:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationHistoryFilter;->-$$Nest$fputmChannel(Lcom/android/server/notification/NotificationHistoryFilter;Ljava/lang/String;)V

    .line 121
    iget p0, p0, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->mNotificationCount:I

    invoke-static {v0, p0}, Lcom/android/server/notification/NotificationHistoryFilter;->-$$Nest$fputmNotificationCount(Lcom/android/server/notification/NotificationHistoryFilter;I)V

    return-object v0
.end method
