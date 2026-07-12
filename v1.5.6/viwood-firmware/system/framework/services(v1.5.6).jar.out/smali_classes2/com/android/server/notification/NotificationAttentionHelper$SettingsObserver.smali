.class public final Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationAttentionHelper.java"


# static fields
.field public static final NOTIFICATION_COOLDOWN_ALL_URI:Landroid/net/Uri;

.field public static final NOTIFICATION_COOLDOWN_ENABLED_URI:Landroid/net/Uri;

.field public static final NOTIFICATION_COOLDOWN_VIBRATE_UNLOCKED_URI:Landroid/net/Uri;

.field public static final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationAttentionHelper;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetNOTIFICATION_COOLDOWN_ALL_URI()Landroid/net/Uri;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->NOTIFICATION_COOLDOWN_ALL_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetNOTIFICATION_COOLDOWN_ENABLED_URI()Landroid/net/Uri;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->NOTIFICATION_COOLDOWN_ENABLED_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetNOTIFICATION_COOLDOWN_VIBRATE_UNLOCKED_URI()Landroid/net/Uri;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->NOTIFICATION_COOLDOWN_VIBRATE_UNLOCKED_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetNOTIFICATION_LIGHT_PULSE_URI()Landroid/net/Uri;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1757
    const-string/jumbo v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 1759
    const-string/jumbo v0, "notification_cooldown_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->NOTIFICATION_COOLDOWN_ENABLED_URI:Landroid/net/Uri;

    .line 1761
    const-string/jumbo v0, "notification_cooldown_all"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->NOTIFICATION_COOLDOWN_ALL_URI:Landroid/net/Uri;

    .line 1763
    const-string/jumbo v0, "notification_cooldown_vibrate_unlocked"

    .line 1764
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->NOTIFICATION_COOLDOWN_VIBRATE_UNLOCKED_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationAttentionHelper;)V
    .locals 0

    .line 1765
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    const/4 p1, 0x0

    .line 1766
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6

    .line 1771
    sget-object p1, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 1772
    iget-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {p1}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmContext(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/content/Context;

    move-result-object p1

    .line 1773
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v3, "notification_light_pulse"

    .line 1772
    invoke-static {p1, v3, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    .line 1777
    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v3}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmLock(Lcom/android/server/notification/NotificationAttentionHelper;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1778
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v4}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmNotificationPulseEnabled(Lcom/android/server/notification/NotificationAttentionHelper;)Z

    move-result v4

    if-eq v4, p1, :cond_1

    .line 1779
    iget-object v4, p0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v4, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fputmNotificationPulseEnabled(Lcom/android/server/notification/NotificationAttentionHelper;Z)V

    .line 1780
    iget-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1782
    :cond_1
    :goto_1
    monitor-exit v3

    goto :goto_3

    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1785
    :cond_2
    :goto_3
    sget-object p1, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->NOTIFICATION_COOLDOWN_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1786
    iget-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {p1}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmContext(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/content/Context;

    move-result-object v3

    .line 1787
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "notification_cooldown_enabled"

    .line 1786
    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_4

    :cond_3
    move v3, v1

    :goto_4
    invoke-static {p1, v3}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fputmNotificationCooldownEnabled(Lcom/android/server/notification/NotificationAttentionHelper;Z)V

    .line 1792
    iget-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {p1}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmCurrentWorkProfileId(Lcom/android/server/notification/NotificationAttentionHelper;)I

    move-result p1

    const/16 v3, -0x2710

    if-eq p1, v3, :cond_5

    .line 1793
    iget-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {p1}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmContext(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/content/Context;

    move-result-object v3

    .line 1794
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "notification_cooldown_enabled"

    iget-object v5, p0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {v5}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmCurrentWorkProfileId(Lcom/android/server/notification/NotificationAttentionHelper;)I

    move-result v5

    .line 1793
    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_5

    :cond_4
    move v3, v1

    :goto_5
    invoke-static {p1, v3}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fputmNotificationCooldownForWorkEnabled(Lcom/android/server/notification/NotificationAttentionHelper;Z)V

    goto :goto_6

    .line 1800
    :cond_5
    iget-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {p1, v1}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fputmNotificationCooldownForWorkEnabled(Lcom/android/server/notification/NotificationAttentionHelper;Z)V

    .line 1803
    :cond_6
    :goto_6
    sget-object p1, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->NOTIFICATION_COOLDOWN_ALL_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1804
    iget-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {p1}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmContext(Lcom/android/server/notification/NotificationAttentionHelper;)Landroid/content/Context;

    move-result-object p2

    .line 1805
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v3, "notification_cooldown_all"

    .line 1804
    invoke-static {p2, v3, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-eqz p2, :cond_7

    move v1, v2

    :cond_7
    invoke-static {p1, v1}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fputmNotificationCooldownApplyToAll(Lcom/android/server/notification/NotificationAttentionHelper;Z)V

    .line 1809
    iget-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {p1}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmStrategy(Lcom/android/server/notification/NotificationAttentionHelper;)Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-static {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->-$$Nest$fgetmNotificationCooldownApplyToAll(Lcom/android/server/notification/NotificationAttentionHelper;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->setApplyCooldownPerPackage(Z)V

    :cond_8
    return-void
.end method
