.class public abstract Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;
.super Ljava/lang/Object;
.source "DefaultCrossProfileIntentFiltersUtils.java"


# static fields
.field public static final ACTION_PICK_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final ACTION_PICK_IMAGES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final ACTION_PICK_IMAGES_WITH_DATA_TYPES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final ACTION_PICK_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final ACTION_SEND:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CALL_BUTTON:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CALL_BUTTON_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CALL_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CALL_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_ACTION_PICK_IMAGES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_ACTION_PICK_IMAGES_WITH_DATA_TYPES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_PHOTOPICKER_SELECTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_PICK_INSERT_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_SEND_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final CLONE_TO_PARENT_WEB_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_DATA_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_DATA_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_MIME_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_MIME_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_RAW_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final DIAL_RAW_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final EMERGENCY_CALL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final EMERGENCY_CALL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final GET_CONTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final HOME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final MOBILE_NETWORK_SETTINGS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final OPEN_DOCUMENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final PARENT_TO_CLONE_DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final PARENT_TO_CLONE_NFC_NDEF_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final PARENT_TO_CLONE_NFC_TAG_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final PARENT_TO_CLONE_NFC_TECH_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final PARENT_TO_CLONE_PICK_INSERT_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final PARENT_TO_CLONE_SEND_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final PARENT_TO_CLONE_WEB_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final RECOGNIZE_SPEECH:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final SET_ALARM:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final SMS_MMS_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final SMS_MMS_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

.field public static final USB_DEVICE_ATTACHED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 47
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v3, "android.intent.action.CALL_EMERGENCY"

    .line 52
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    .line 53
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 54
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 55
    const-string v4, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 56
    const-string/jumbo v5, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 57
    const-string/jumbo v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 58
    const-string/jumbo v7, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 59
    const-string/jumbo v8, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 60
    const-string/jumbo v9, "vnd.android.cursor.item/calls"

    invoke-virtual {v0, v9}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 65
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v10, "android.intent.action.CALL_EMERGENCY"

    .line 70
    invoke-virtual {v0, v10}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v10, "android.intent.action.CALL_PRIVILEGED"

    .line 71
    invoke-virtual {v0, v10}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 74
    const-string/jumbo v10, "tel"

    invoke-virtual {v0, v10}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 75
    const-string/jumbo v11, "sip"

    invoke-virtual {v0, v11}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 76
    const-string/jumbo v12, "voicemail"

    invoke-virtual {v0, v12}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 80
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v13, 0x4

    invoke-direct {v0, v1, v13, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 85
    const-string v14, "android.intent.action.DIAL"

    invoke-virtual {v0, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 86
    const-string v15, "android.intent.action.VIEW"

    invoke-virtual {v0, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v9}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 97
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v13, 0x1

    invoke-direct {v0, v13, v2, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 102
    invoke-virtual {v0, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v9}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_MIME_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 114
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 119
    invoke-virtual {v0, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0, v10}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v11}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0, v12}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 129
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v2, 0x2

    invoke-direct {v0, v13, v2, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 134
    invoke-virtual {v0, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {v0, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 137
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0, v10}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v11}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {v0, v12}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_DATA_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 147
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 152
    invoke-virtual {v0, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 160
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v2, 0x2

    invoke-direct {v0, v13, v2, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 165
    invoke-virtual {v0, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_RAW_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 171
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v2, "android.intent.action.CALL_BUTTON"

    .line 176
    invoke-virtual {v0, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 177
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_BUTTON:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 181
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 186
    invoke-virtual {v0, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 187
    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {v0, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 188
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 190
    const-string/jumbo v1, "sms"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 191
    const-string/jumbo v13, "smsto"

    invoke-virtual {v0, v13}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    move-object/from16 v16, v9

    .line 192
    const-string/jumbo v9, "mms"

    invoke-virtual {v0, v9}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    move-object/from16 v17, v8

    const-string/jumbo v8, "mmsto"

    .line 193
    invoke-virtual {v0, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 197
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-object/from16 v19, v6

    move-object/from16 v18, v7

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct {v0, v6, v7, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 202
    invoke-virtual {v0, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 203
    invoke-virtual {v0, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 205
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 206
    invoke-virtual {v0, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 207
    invoke-virtual {v0, v13}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 208
    invoke-virtual {v0, v9}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string/jumbo v6, "mmsto"

    .line 209
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SMS_MMS_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 214
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct {v0, v8, v7, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v6, "android.settings.DATA_ROAMING_SETTINGS"

    .line 219
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.settings.NETWORK_OPERATOR_SETTINGS"

    .line 220
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 221
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->MOBILE_NETWORK_SETTINGS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 225
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v8, v7, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v6, "android.intent.action.MAIN"

    .line 230
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 231
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.intent.category.HOME"

    .line 232
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->HOME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 236
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v6, 0x1

    invoke-direct {v0, v8, v8, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v7, "android.intent.action.GET_CONTENT"

    .line 241
    invoke-virtual {v0, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 242
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v7, "android.intent.category.OPENABLE"

    .line 243
    invoke-virtual {v0, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 244
    const-string v7, "*/*"

    invoke-virtual {v0, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->GET_CONTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 248
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v8, v8, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v6, "android.provider.action.PICK_IMAGES"

    .line 253
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 254
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_IMAGES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 257
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v6, 0x1

    invoke-direct {v0, v8, v8, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v6, "android.provider.action.PICK_IMAGES"

    .line 262
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 263
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "image/*"

    .line 264
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string/jumbo v6, "video/*"

    .line 265
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_IMAGES_WITH_DATA_TYPES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 269
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v6, 0x1

    invoke-direct {v0, v8, v8, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v6, "android.intent.action.OPEN_DOCUMENT"

    .line 274
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 275
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.intent.category.OPENABLE"

    .line 276
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 277
    invoke-virtual {v0, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->OPEN_DOCUMENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 281
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v6, 0x1

    invoke-direct {v0, v8, v8, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v6, "android.intent.action.PICK"

    .line 286
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 287
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 288
    invoke-virtual {v0, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 292
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v6, 0x1

    invoke-direct {v0, v8, v8, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v6, "android.intent.action.PICK"

    .line 297
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 298
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 302
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v6, 0x4

    invoke-direct {v0, v8, v6, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v6, "android.speech.action.RECOGNIZE_SPEECH"

    .line 307
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 308
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->RECOGNIZE_SPEECH:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 312
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-object/from16 v20, v5

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-direct {v0, v8, v6, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    .line 317
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v5, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 318
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v5, "android.provider.action.MOTION_PHOTO_CAPTURE"

    .line 319
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v5, "android.provider.action.MOTION_PHOTO_CAPTURE_SECURE"

    .line 320
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v5, "android.media.action.VIDEO_CAPTURE"

    .line 321
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v5, "android.provider.MediaStore.RECORD_SOUND"

    .line 322
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v5, "android.media.action.STILL_IMAGE_CAMERA"

    .line 323
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v5, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 324
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v5, "android.media.action.VIDEO_CAMERA"

    .line 325
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 326
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 330
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v8, 0x0

    invoke-direct {v0, v8, v8, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v5, "android.intent.action.SET_ALARM"

    .line 335
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v5, "android.intent.action.SHOW_ALARMS"

    .line 336
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v5, "android.intent.action.SET_TIMER"

    .line 337
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 338
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SET_ALARM:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 344
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v6, 0x1

    invoke-direct {v0, v6, v8, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v5, "android.intent.action.SEND"

    .line 349
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v5, "android.intent.action.SEND_MULTIPLE"

    .line 350
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 351
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 352
    invoke-virtual {v0, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_SEND:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 357
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v6, v8, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v5, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 362
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v5, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    .line 363
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 364
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->USB_DEVICE_ATTACHED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 397
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v5, 0x2

    invoke-direct {v0, v6, v5, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v5, "android.intent.action.CALL"

    .line 402
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 403
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 404
    invoke-virtual {v0, v10}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 435
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/16 v5, 0x18

    invoke-direct {v0, v8, v5, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v6, "android.media.action.IMAGE_CAPTURE"

    .line 441
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 442
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.provider.action.MOTION_PHOTO_CAPTURE"

    .line 443
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.provider.action.MOTION_PHOTO_CAPTURE_SECURE"

    .line 444
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.media.action.VIDEO_CAPTURE"

    .line 445
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.provider.MediaStore.RECORD_SOUND"

    .line 446
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.media.action.STILL_IMAGE_CAMERA"

    .line 447
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 448
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.media.action.VIDEO_CAMERA"

    .line 449
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 450
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 451
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 453
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v8, 0x0

    invoke-direct {v0, v8, v5, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v6, "android.provider.action.USER_SELECT_IMAGES_FOR_APP"

    .line 459
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 460
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_PHOTOPICKER_SELECTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 467
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v8, v5, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v6, "android.intent.action.SEND"

    .line 473
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.intent.action.SEND_MULTIPLE"

    .line 474
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 475
    invoke-virtual {v0, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 476
    invoke-virtual {v0, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 477
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_SEND_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 483
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v6, 0x1

    invoke-direct {v0, v6, v5, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v6, "android.intent.action.SEND"

    .line 489
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.intent.action.SEND_MULTIPLE"

    .line 490
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 491
    invoke-virtual {v0, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 492
    invoke-virtual {v0, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_SEND_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 498
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v8, v5, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 504
    invoke-virtual {v0, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "https"

    .line 505
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "http"

    .line 506
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_WEB_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 512
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v6, 0x1

    invoke-direct {v0, v6, v5, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 518
    invoke-virtual {v0, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "https"

    .line 519
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "http"

    .line 520
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_WEB_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 527
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v8, v5, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 533
    invoke-virtual {v0, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 534
    invoke-virtual {v0, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 542
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v8, v5, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v6, "android.intent.action.PICK"

    .line 548
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.intent.action.GET_CONTENT"

    .line 549
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.intent.action.EDIT"

    .line 550
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.intent.action.INSERT"

    .line 551
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.intent.action.INSERT_OR_EDIT"

    .line 552
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.intent.action.OPEN_DOCUMENT"

    .line 553
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 554
    invoke-virtual {v0, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 555
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.intent.category.OPENABLE"

    .line 556
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_PICK_INSERT_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 562
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-direct {v0, v6, v5, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v6, "android.intent.action.PICK"

    .line 568
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.intent.action.GET_CONTENT"

    .line 569
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.intent.action.EDIT"

    .line 570
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.intent.action.INSERT"

    .line 571
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.intent.action.INSERT_OR_EDIT"

    .line 572
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.intent.action.OPEN_DOCUMENT"

    .line 573
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 574
    invoke-virtual {v0, v7}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 575
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v6, "android.intent.category.OPENABLE"

    .line 576
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 577
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_PICK_INSERT_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 579
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-direct {v0, v6, v5, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 585
    invoke-virtual {v0, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 586
    invoke-virtual {v0, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 587
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 588
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 589
    invoke-virtual {v0, v10}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 590
    invoke-virtual {v0, v11}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 591
    invoke-virtual {v0, v12}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 592
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 594
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v8, v5, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 600
    invoke-virtual {v0, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 601
    invoke-virtual {v0, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 602
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 603
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 604
    invoke-virtual {v0, v10}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 605
    invoke-virtual {v0, v11}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 606
    invoke-virtual {v0, v12}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 607
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 609
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v8, v5, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 615
    invoke-virtual {v0, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 616
    invoke-virtual {v0, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 617
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 618
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 619
    invoke-virtual {v0, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 620
    invoke-virtual {v0, v13}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 621
    invoke-virtual {v0, v9}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string/jumbo v6, "mmsto"

    .line 622
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 623
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 625
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v8, 0x0

    invoke-direct {v0, v8, v5, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v6, "android.provider.action.PICK_IMAGES"

    .line 630
    invoke-virtual {v0, v6}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 631
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 632
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_ACTION_PICK_IMAGES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 635
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v8, v5, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v5, "android.provider.action.PICK_IMAGES"

    .line 640
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 641
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string v5, "image/*"

    .line 642
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string/jumbo v5, "video/*"

    .line 643
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 644
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_ACTION_PICK_IMAGES_WITH_DATA_TYPES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 647
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v6, 0x1

    invoke-direct {v0, v6, v8, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v5, "android.nfc.action.TAG_DISCOVERED"

    .line 652
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_NFC_TAG_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 656
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v6, v8, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v5, "android.nfc.action.TECH_DISCOVERED"

    .line 661
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 662
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_NFC_TECH_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 665
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v6, v8, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v5, "android.nfc.action.NDEF_DISCOVERED"

    .line 670
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 671
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_NFC_NDEF_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 696
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v7, 0x2

    invoke-direct {v0, v8, v7, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v5, "android.intent.action.CALL"

    .line 701
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 702
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 703
    invoke-virtual {v0, v10}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 704
    invoke-virtual {v0, v11}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 705
    invoke-virtual {v0, v12}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 706
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 709
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v6, 0x4

    invoke-direct {v0, v8, v6, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    const-string v5, "android.intent.action.CALL_BUTTON"

    .line 714
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 715
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 716
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_BUTTON_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 719
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v8, v6, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 724
    invoke-virtual {v0, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 725
    invoke-virtual {v0, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 726
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 727
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    move-object/from16 v5, v20

    .line 728
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    move-object/from16 v5, v19

    .line 729
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    move-object/from16 v5, v18

    .line 730
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    move-object/from16 v5, v17

    .line 731
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    move-object/from16 v5, v16

    .line 732
    invoke-virtual {v0, v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 733
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_MIME_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 736
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v6, 0x4

    const/4 v8, 0x0

    invoke-direct {v0, v8, v6, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 741
    invoke-virtual {v0, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 742
    invoke-virtual {v0, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 743
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 744
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 745
    invoke-virtual {v0, v10}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 746
    invoke-virtual {v0, v11}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 747
    invoke-virtual {v0, v12}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 748
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_DATA_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 754
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    invoke-direct {v0, v8, v6, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 759
    invoke-virtual {v0, v14}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 760
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 761
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 762
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_RAW_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    .line 765
    new-instance v0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    const/4 v7, 0x2

    invoke-direct {v0, v8, v7, v8}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;-><init>(IIZ)V

    .line 770
    invoke-virtual {v0, v15}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 771
    invoke-virtual {v0, v2}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 772
    invoke-virtual {v0, v3}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 773
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 774
    invoke-virtual {v0, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 775
    invoke-virtual {v0, v13}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 776
    invoke-virtual {v0, v9}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    const-string/jumbo v1, "mmsto"

    .line 777
    invoke-virtual {v0, v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;

    move-result-object v0

    .line 778
    invoke-virtual {v0}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SMS_MMS_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    return-void
.end method

.method public static getDefaultCloneProfileFilters()Ljava/util/List;
    .locals 18

    .line 674
    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_SEND_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v2, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_WEB_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v3, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_PICK_INSERT_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v4, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v5, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v6, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_SEND_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v7, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_WEB_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v8, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_VIEW_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v9, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_PICK_INSERT_ACTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v10, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v11, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v12, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_PHOTOPICKER_SELECTION:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v13, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_ACTION_PICK_IMAGES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v14, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CLONE_TO_PARENT_ACTION_PICK_IMAGES_WITH_DATA_TYPES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v15, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_NFC_TAG_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v16, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_NFC_TECH_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v17, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->PARENT_TO_CLONE_NFC_NDEF_DISCOVERED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    filled-new-array/range {v1 .. v17}, [Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultCrossProfileTelephonyIntentFilters(Z)Ljava/util/List;
    .locals 4

    if-eqz p0, :cond_0

    .line 413
    sget-object p0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_DATA_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_MIME_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_RAW_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v2, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v3, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SMS_MMS_MANAGED_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    filled-new-array {p0, v0, v1, v2, v3}, [Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 420
    :cond_0
    sget-object p0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v2, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SMS_MMS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    filled-new-array {p0, v0, v1, v2}, [Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultManagedProfileFilters()Ljava/util/List;
    .locals 17

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v2, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v3, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_BUTTON:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v4, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SET_ALARM:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v5, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->MEDIA_CAPTURE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v6, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->RECOGNIZE_SPEECH:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v7, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_RAW:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v8, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v9, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_IMAGES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v10, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_PICK_IMAGES_WITH_DATA_TYPES:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v11, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->OPEN_DOCUMENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v12, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->GET_CONTENT:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v13, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->USB_DEVICE_ATTACHED:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v14, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->ACTION_SEND:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v15, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->HOME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v16, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->MOBILE_NETWORK_SETTINGS:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    filled-new-array/range {v1 .. v16}, [Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    .line 388
    invoke-static {v1}, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->getDefaultCrossProfileTelephonyIntentFilters(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static getDefaultPrivateProfileFilters()Ljava/util/List;
    .locals 8

    .line 781
    sget-object v0, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_MIME_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v1, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_DATA_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v2, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->DIAL_RAW_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v3, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v4, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->CALL_BUTTON_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v5, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_DATA:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v6, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->EMERGENCY_CALL_MIME:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    sget-object v7, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->SMS_MMS_PRIVATE_PROFILE:Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    filled-new-array/range {v0 .. v7}, [Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
