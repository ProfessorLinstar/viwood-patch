.class public abstract Lcom/android/server/wm/ActivityTaskManagerDebugConfig;
.super Ljava/lang/Object;
.source "ActivityTaskManagerDebugConfig.java"


# static fields
.field public static volatile APPEND_CATEGORY_NAME:Z = false

.field public static DEBUG_ACTIVITY_STARTS:Z = false

.field public static DEBUG_ALL:Z = false

.field public static DEBUG_APP:Z = false

.field public static DEBUG_CLEANUP:Z = false

.field public static DEBUG_IDLE:Z = false

.field public static DEBUG_METRICS:Z = false

.field public static DEBUG_PERMISSIONS_REVIEW:Z = false

.field public static DEBUG_RECENTS:Z = false

.field public static DEBUG_RECENTS_TRIM_TASKS:Z = false

.field public static DEBUG_RELEASE:Z = false

.field public static DEBUG_RESULTS:Z = false

.field public static DEBUG_ROOT_TASK:Z = false

.field public static DEBUG_SWITCH:Z = false

.field public static DEBUG_TRANSITION:Z = false

.field public static DEBUG_USER_LEAVING:Z = false

.field public static DEBUG_VISIBILITY:Z = false

.field public static final POSTFIX_ADD_REMOVE:Ljava/lang/String;

.field public static final POSTFIX_APP:Ljava/lang/String;

.field public static final POSTFIX_CLEANUP:Ljava/lang/String;

.field public static final POSTFIX_CONFIGURATION:Ljava/lang/String;

.field public static final POSTFIX_CONTAINERS:Ljava/lang/String;

.field public static final POSTFIX_FOCUS:Ljava/lang/String;

.field public static final POSTFIX_IDLE:Ljava/lang/String;

.field public static final POSTFIX_IMMERSIVE:Ljava/lang/String;

.field public static final POSTFIX_LOCKTASK:Ljava/lang/String;

.field public static final POSTFIX_PAUSE:Ljava/lang/String;

.field public static final POSTFIX_RECENTS:Ljava/lang/String;

.field public static final POSTFIX_RELEASE:Ljava/lang/String;

.field public static final POSTFIX_RESULTS:Ljava/lang/String;

.field public static final POSTFIX_ROOT_TASK:Ljava/lang/String;

.field public static final POSTFIX_SAVED_STATE:Ljava/lang/String;

.field public static final POSTFIX_STATES:Ljava/lang/String;

.field public static final POSTFIX_SWITCH:Ljava/lang/String;

.field public static final POSTFIX_TASKS:Ljava/lang/String;

.field public static final POSTFIX_TRANSITION:Ljava/lang/String;

.field public static final POSTFIX_USER_LEAVING:Ljava/lang/String;

.field public static final POSTFIX_VISIBILITY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->APPEND_CATEGORY_NAME:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v0, "_App"

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_APP:Ljava/lang/String;

    .line 65
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->APPEND_CATEGORY_NAME:Z

    if-eqz v0, :cond_1

    const-string v0, "_Cleanup"

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_CLEANUP:Ljava/lang/String;

    .line 66
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->APPEND_CATEGORY_NAME:Z

    if-eqz v0, :cond_2

    const-string v0, "_Idle"

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_IDLE:Ljava/lang/String;

    .line 67
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->APPEND_CATEGORY_NAME:Z

    if-eqz v0, :cond_3

    const-string v0, "_Release"

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_RELEASE:Ljava/lang/String;

    .line 68
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->APPEND_CATEGORY_NAME:Z

    if-eqz v0, :cond_4

    const-string v0, "_UserLeaving"

    goto :goto_4

    :cond_4
    move-object v0, v1

    :goto_4
    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_USER_LEAVING:Ljava/lang/String;

    .line 69
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->APPEND_CATEGORY_NAME:Z

    if-eqz v0, :cond_5

    const-string v0, "_AddRemove"

    goto :goto_5

    :cond_5
    move-object v0, v1

    :goto_5
    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_ADD_REMOVE:Ljava/lang/String;

    .line 70
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->APPEND_CATEGORY_NAME:Z

    if-eqz v0, :cond_6

    const-string v0, "_Configuration"

    goto :goto_6

    :cond_6
    move-object v0, v1

    :goto_6
    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_CONFIGURATION:Ljava/lang/String;

    .line 71
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->APPEND_CATEGORY_NAME:Z

    if-eqz v0, :cond_7

    const-string v0, "_Containers"

    goto :goto_7

    :cond_7
    move-object v0, v1

    :goto_7
    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_CONTAINERS:Ljava/lang/String;

    .line 72
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->APPEND_CATEGORY_NAME:Z

    if-eqz v0, :cond_8

    const-string v0, "_Focus"

    goto :goto_8

    :cond_8
    move-object v0, v1

    :goto_8
    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_FOCUS:Ljava/lang/String;

    .line 73
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->APPEND_CATEGORY_NAME:Z

    if-eqz v0, :cond_9

    const-string v0, "_Immersive"

    goto :goto_9

    :cond_9
    move-object v0, v1

    :goto_9
    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_IMMERSIVE:Ljava/lang/String;

    .line 74
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->APPEND_CATEGORY_NAME:Z

    if-eqz v0, :cond_a

    const-string v0, "_LockTask"

    goto :goto_a

    :cond_a
    move-object v0, v1

    :goto_a
    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_LOCKTASK:Ljava/lang/String;

    .line 75
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->APPEND_CATEGORY_NAME:Z

    if-eqz v0, :cond_b

    const-string v0, "_Pause"

    goto :goto_b

    :cond_b
    move-object v0, v1

    :goto_b
    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_PAUSE:Ljava/lang/String;

    .line 76
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->APPEND_CATEGORY_NAME:Z

    if-eqz v0, :cond_c

    const-string v0, "_Recents"

    goto :goto_c

    :cond_c
    move-object v0, v1

    :goto_c
    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_RECENTS:Ljava/lang/String;

    .line 77
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->APPEND_CATEGORY_NAME:Z

    if-eqz v0, :cond_d

    const-string v0, "_SavedState"

    goto :goto_d

    :cond_d
    move-object v0, v1

    :goto_d
    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_SAVED_STATE:Ljava/lang/String;

    .line 78
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->APPEND_CATEGORY_NAME:Z

    if-eqz v0, :cond_e

    const-string v0, "_RootTask"

    goto :goto_e

    :cond_e
    move-object v0, v1

    :goto_e
    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_ROOT_TASK:Ljava/lang/String;

    .line 79
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->APPEND_CATEGORY_NAME:Z

    if-eqz v0, :cond_f

    const-string v0, "_States"

    goto :goto_f

    :cond_f
    move-object v0, v1

    :goto_f
    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_STATES:Ljava/lang/String;

    .line 80
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->APPEND_CATEGORY_NAME:Z

    if-eqz v0, :cond_10

    const-string v0, "_Switch"

    goto :goto_10

    :cond_10
    move-object v0, v1

    :goto_10
    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_SWITCH:Ljava/lang/String;

    .line 81
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->APPEND_CATEGORY_NAME:Z

    if-eqz v0, :cond_11

    const-string v0, "_Tasks"

    goto :goto_11

    :cond_11
    move-object v0, v1

    :goto_11
    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_TASKS:Ljava/lang/String;

    .line 82
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->APPEND_CATEGORY_NAME:Z

    if-eqz v0, :cond_12

    const-string v0, "_Transition"

    goto :goto_12

    :cond_12
    move-object v0, v1

    :goto_12
    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_TRANSITION:Ljava/lang/String;

    .line 83
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->APPEND_CATEGORY_NAME:Z

    if-eqz v0, :cond_13

    const-string v0, "_Visibility"

    goto :goto_13

    :cond_13
    move-object v0, v1

    :goto_13
    sput-object v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_VISIBILITY:Ljava/lang/String;

    .line 84
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->APPEND_CATEGORY_NAME:Z

    if-eqz v0, :cond_14

    const-string v1, "_Results"

    :cond_14
    sput-object v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_RESULTS:Ljava/lang/String;

    return-void
.end method
