.class public Lcom/android/server/notification/ValidateNotificationPeople$1;
.super Landroid/database/ContentObserver;
.source "ValidateNotificationPeople.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/ValidateNotificationPeople;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/os/Handler;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 123
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {p1}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$fgetmEvictionCount(Lcom/android/server/notification/ValidateNotificationPeople;)I

    move-result p1

    rem-int/lit8 p1, p1, 0x64

    if-nez p1, :cond_1

    .line 124
    :cond_0
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$sfgetVERBOSE()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mEvictionCount: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {p2}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$fgetmEvictionCount(Lcom/android/server/notification/ValidateNotificationPeople;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ValidateNoPeople"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {p1}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$fgetmPeopleCache(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/LruCache;->evictAll()V

    .line 127
    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {p0}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$fgetmEvictionCount(Lcom/android/server/notification/ValidateNotificationPeople;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$fputmEvictionCount(Lcom/android/server/notification/ValidateNotificationPeople;I)V

    return-void
.end method
