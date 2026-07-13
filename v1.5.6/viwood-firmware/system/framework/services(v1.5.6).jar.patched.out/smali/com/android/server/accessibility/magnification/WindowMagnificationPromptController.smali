.class public Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;
.super Ljava/lang/Object;
.source "WindowMagnificationPromptController.java"


# static fields
.field static final ACTION_DISMISS:Ljava/lang/String; = "com.android.server.accessibility.magnification.action.DISMISS"

.field static final ACTION_TURN_ON_IN_SETTINGS:Ljava/lang/String; = "com.android.server.accessibility.magnification.action.TURN_ON_IN_SETTINGS"

.field public static final MAGNIFICATION_WINDOW_MODE_PROMPT_URI:Landroid/net/Uri;


# instance fields
.field public final mContentObserver:Landroid/database/ContentObserver;

.field public final mContext:Landroid/content/Context;

.field public mNeedToShowNotification:Z

.field mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmNeedToShowNotification(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNeedToShowNotification:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdismissNotification(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->dismissNotification()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlaunchMagnificationSettings(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->launchMagnificationSettings()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-string v0, "accessibility_show_window_magnification_prompt"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->MAGNIFICATION_WINDOW_MODE_PROMPT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 73
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 74
    iput p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mUserId:I

    .line 75
    new-instance v0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$1;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContentObserver:Landroid/database/ContentObserver;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->MAGNIFICATION_WINDOW_MODE_PROMPT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->isWindowMagnificationPromptEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNeedToShowNotification:Z

    return-void
.end method


# virtual methods
.method public final buildTurnOnAction()Landroid/app/Notification$Action;
    .locals 3

    .line 143
    new-instance v0, Landroid/app/Notification$Action$Builder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    const v2, 0x1040a59

    .line 144
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.server.accessibility.magnification.action.TURN_ON_IN_SETTINGS"

    .line 145
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method public final createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    const/high16 v1, 0x4000000

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public final dismissNotification()V
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->unregisterReceiverIfNeeded()V

    .line 180
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v0, 0x3ec

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public final isWindowMagnificationPromptEnabled()Z
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mUserId:I

    const-string v1, "accessibility_show_window_magnification_prompt"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v2
.end method

.method public final launchMagnificationSettings()V
    .locals 4

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 169
    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 170
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 169
    const-string v2, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 172
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 173
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    .line 172
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 174
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mUserId:I

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 175
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/StatusBarManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    invoke-virtual {p0}, Landroid/app/StatusBarManager;->collapsePanels()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->dismissNotification()V

    .line 134
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPromptSettingsValueChanged()V
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->isWindowMagnificationPromptEnabled()Z

    move-result v0

    .line 90
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNeedToShowNotification:Z

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNeedToShowNotification:Z

    if-nez v0, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->unregisterReceiverIfNeeded()V

    .line 96
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v0, 0x3ec

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final registerReceiverIfNeeded()V
    .locals 8

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    .line 158
    :cond_0
    new-instance v0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController-IA;)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    const-string v0, "com.android.server.accessibility.magnification.action.DISMISS"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v0, "com.android.server.accessibility.magnification.action.TURN_ON_IN_SETTINGS"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v5, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method public showNotificationIfNeeded()V
    .locals 6

    .line 105
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNeedToShowNotification:Z

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    const-string v2, "ACCESSIBILITY_MAGNIFICATION"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    const v2, 0x1040aec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x108039a

    .line 111
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    const v4, 0x1040aed

    .line 112
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    const v5, 0x10803a8

    .line 114
    invoke-static {v3, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 117
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 118
    invoke-virtual {v4, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "com.android.server.accessibility.magnification.action.DISMISS"

    .line 119
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "com.android.server.accessibility.magnification.action.TURN_ON_IN_SETTINGS"

    .line 120
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-array v2, v3, [Landroid/app/Notification$Action;

    const/4 v3, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->buildTurnOnAction()Landroid/app/Notification$Action;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 122
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x3ec

    .line 123
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 122
    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->registerReceiverIfNeeded()V

    return-void
.end method

.method public final unregisterReceiverIfNeeded()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method
