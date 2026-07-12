.class public Lcom/android/server/usb/UsbUserSettingsManager;
.super Ljava/lang/Object;
.source "UsbUserSettingsManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UsbUserSettingsManager"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mUser:Landroid/os/UserHandle;

.field public final mUserContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mLock:Ljava/lang/Object;

    .line 67
    :try_start_0
    const-string v0, "android"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 74
    iput-object p2, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUser:Landroid/os/UserHandle;

    return-void

    .line 69
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Missing android package"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public canBeDefault(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)Z
    .locals 8

    .line 141
    invoke-virtual {p0, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->getPackageActivities(Ljava/lang/String;)[Landroid/content/pm/ActivityInfo;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 143
    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 145
    aget-object v3, p2, v2

    .line 147
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    if-nez v4, :cond_1

    if-eqz v4, :cond_3

    .line 164
    :cond_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v4

    goto :goto_4

    .line 153
    :cond_1
    :try_start_1
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 154
    :goto_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 155
    const-string/jumbo v5, "usb-accessory"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 156
    invoke-static {v4}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object v5

    .line 157
    invoke-virtual {v5, p1}, Landroid/hardware/usb/AccessoryFilter;->matches(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    .line 164
    :try_start_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v6

    :catchall_0
    move-exception v5

    goto :goto_2

    .line 162
    :cond_2
    :try_start_3
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 147
    :goto_2
    :try_start_4
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 165
    :goto_4
    sget-object v5, Lcom/android/server/usb/UsbUserSettingsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load component info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public canBeDefault(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z
    .locals 8

    .line 99
    invoke-virtual {p0, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->getPackageActivities(Ljava/lang/String;)[Landroid/content/pm/ActivityInfo;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 101
    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 103
    aget-object v3, p2, v2

    .line 105
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    if-nez v4, :cond_1

    if-eqz v4, :cond_3

    .line 122
    :cond_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v4

    goto :goto_4

    .line 111
    :cond_1
    :try_start_1
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 112
    :goto_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 113
    const-string/jumbo v5, "usb-device"

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 114
    invoke-static {v4}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object v5

    .line 115
    invoke-virtual {v5, p1}, Landroid/hardware/usb/DeviceFilter;->matches(Landroid/hardware/usb/UsbDevice;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    .line 122
    :try_start_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v6

    :catchall_0
    move-exception v5

    goto :goto_2

    .line 120
    :cond_2
    :try_start_3
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 105
    :goto_2
    :try_start_4
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 123
    :goto_4
    sget-object v5, Lcom/android/server/usb/UsbUserSettingsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load component info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 185
    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v2

    .line 187
    iget-object v4, v0, Lcom/android/server/usb/UsbUserSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 188
    :try_start_0
    const-string/jumbo v5, "user_id"

    iget-object v6, v0, Lcom/android/server/usb/UsbUserSettingsManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    const-wide v7, 0x10500000001L

    invoke-virtual {v1, v5, v7, v8, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 190
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/server/usb/UsbUserSettingsManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v5

    .line 192
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_0
    const-wide v11, 0x10b00000001L

    if-ge v8, v6, :cond_1

    .line 194
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 196
    const-string v14, "device_attached_activities"

    move/from16 p3, v8

    const-wide v7, 0x20b00000004L

    invoke-virtual {v1, v14, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v7

    .line 199
    const-string v14, "activity"

    new-instance v15, Landroid/content/ComponentName;

    iget-object v9, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v15, v10, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v14, v11, v12, v15}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 203
    iget-object v9, v0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v9, v13}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getDeviceFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 206
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_0

    .line 208
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/usb/DeviceFilter;

    const-string v13, "filters"

    const-wide v14, 0x20b00000002L

    invoke-virtual {v12, v1, v13, v14, v15}, Landroid/hardware/usb/DeviceFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 213
    :cond_0
    invoke-virtual {v1, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v8, p3, 0x1

    goto :goto_0

    .line 216
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, v5}, Lcom/android/server/usb/UsbUserSettingsManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v5

    .line 218
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_3

    .line 221
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 223
    const-string v9, "accessory_attached_activities"

    const-wide v13, 0x20b00000005L

    invoke-virtual {v1, v9, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v9

    .line 226
    const-string v13, "activity"

    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v14, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v11, 0x10b00000001L

    invoke-static {v1, v13, v11, v12, v14}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 230
    iget-object v13, v0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v13, v8}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getAccessoryFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 233
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_2

    .line 235
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/usb/AccessoryFilter;

    const-string v11, "filters"

    move-object v12, v5

    move/from16 v16, v6

    const-wide v5, 0x20b00000002L

    invoke-virtual {v15, v1, v11, v5, v6}, Landroid/hardware/usb/AccessoryFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    add-int/lit8 v14, v14, 0x1

    move-object v5, v12

    move/from16 v6, v16

    const-wide v11, 0x10b00000001L

    goto :goto_3

    :cond_2
    move-object v12, v5

    move/from16 v16, v6

    const-wide v5, 0x20b00000002L

    .line 240
    invoke-virtual {v1, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v7, v7, 0x1

    move-object v5, v12

    move/from16 v6, v16

    const-wide v11, 0x10b00000001L

    goto :goto_2

    .line 242
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void

    .line 242
    :goto_4
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getPackageActivities(Ljava/lang/String;)[Landroid/content/pm/ActivityInfo;
    .locals 1

    .line 175
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v0, 0x81

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 177
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUser:Landroid/os/UserHandle;

    .line 86
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    const/16 v1, 0x80

    .line 85
    invoke-virtual {v0, p1, v1, p0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
