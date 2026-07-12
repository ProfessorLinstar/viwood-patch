.class public Lcom/android/server/backup/SystemBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SystemBackupAgent.java"


# static fields
.field public static final WALLPAPER_IMAGE:Ljava/lang/String;

.field public static final WALLPAPER_IMAGE_DIR:Ljava/lang/String;

.field public static final WALLPAPER_INFO:Ljava/lang/String;

.field public static final WALLPAPER_INFO_DIR:Ljava/lang/String;

.field public static final sEligibleHelpersForNonSystemUser:Ljava/util/Set;

.field public static final sEligibleHelpersForProfileUser:Ljava/util/Set;


# instance fields
.field public mIsProfileUser:Z

.field public mLogger:Landroid/app/backup/BackupRestoreEventLogger;

.field public mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x0

    .line 83
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE_DIR:Ljava/lang/String;

    .line 84
    new-instance v1, Ljava/io/File;

    .line 85
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    .line 91
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO_DIR:Ljava/lang/String;

    .line 92
    new-instance v1, Ljava/io/File;

    .line 93
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "wallpaper_info.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    .line 102
    const-string/jumbo v7, "system_gender"

    const-string v8, "display"

    const-string/jumbo v1, "permissions"

    const-string/jumbo v2, "notifications"

    const-string v3, "account_sync_settings"

    const-string v4, "app_locales"

    const-string v5, "companion"

    const-string v6, "app_gender"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->sEligibleHelpersForProfileUser:Ljava/util/Set;

    .line 114
    const-string v5, "input"

    const-string/jumbo v6, "wear"

    const-string v1, "account_manager"

    const-string/jumbo v2, "usage_stats"

    const-string/jumbo v3, "preferred_activities"

    const-string/jumbo v4, "shortcut_manager"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    .line 115
    invoke-static {v0, v1}, Lcom/android/server/backup/SetUtils;->union(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->sEligibleHelpersForNonSystemUser:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 120
    iput-boolean v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mIsProfileUser:Z

    return-void
.end method


# virtual methods
.method public final addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V
    .locals 1

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/server/backup/SystemBackupAgent;->isHelperEligibleForUser(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0, p1, p2}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 240
    iget-object p0, p0, Lcom/android/server/backup/SystemBackupAgent;->mLogger:Landroid/app/backup/BackupRestoreEventLogger;

    invoke-virtual {p2, p0}, Landroid/app/backup/BackupHelperWithLogger;->setLogger(Landroid/app/backup/BackupRestoreEventLogger;)V

    :cond_0
    return-void
.end method

.method public final isHelperEligibleForUser(Ljava/lang/String;)Z
    .locals 1

    .line 247
    iget v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 252
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/backup/SystemBackupAgent;->mIsProfileUser:Z

    if-eqz p0, :cond_1

    .line 253
    sget-object p0, Lcom/android/server/backup/SystemBackupAgent;->sEligibleHelpersForProfileUser:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 257
    :cond_1
    sget-object p0, Lcom/android/server/backup/SystemBackupAgent;->sEligibleHelpersForNonSystemUser:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/UserHandle;I)V
    .locals 0

    .line 125
    invoke-super {p0, p1, p2}, Landroid/app/backup/BackupAgentHelper;->onCreate(Landroid/os/UserHandle;I)V

    .line 126
    invoke-virtual {p0}, Landroid/app/backup/BackupAgentHelper;->getBackupRestoreEventLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mLogger:Landroid/app/backup/BackupRestoreEventLogger;

    .line 128
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    iput p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 130
    invoke-virtual {p0, p1, p2}, Landroid/app/backup/BackupAgentHelper;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    .line 131
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 132
    invoke-virtual {p1}, Landroid/os/UserManager;->isProfile()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/backup/SystemBackupAgent;->mIsProfileUser:Z

    .line 135
    :cond_0
    new-instance p1, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p0, p2}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;I)V

    const-string p2, "account_sync_settings"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 137
    new-instance p1, Lcom/android/server/backup/PreferredActivityBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/backup/PreferredActivityBackupHelper;-><init>(I)V

    const-string/jumbo p2, "preferred_activities"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 138
    new-instance p1, Lcom/android/server/notification/NotificationBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/notification/NotificationBackupHelper;-><init>(I)V

    const-string/jumbo p2, "notifications"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 139
    new-instance p1, Lcom/android/server/backup/PermissionBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/backup/PermissionBackupHelper;-><init>(I)V

    const-string/jumbo p2, "permissions"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 140
    new-instance p1, Lcom/android/server/backup/UsageStatsBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/backup/UsageStatsBackupHelper;-><init>(I)V

    const-string/jumbo p2, "usage_stats"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 141
    new-instance p1, Lcom/android/server/backup/ShortcutBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/backup/ShortcutBackupHelper;-><init>(I)V

    const-string/jumbo p2, "shortcut_manager"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 142
    new-instance p1, Lcom/android/server/backup/AccountManagerBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/backup/AccountManagerBackupHelper;-><init>(I)V

    const-string p2, "account_manager"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 143
    invoke-virtual {p0}, Landroid/app/backup/BackupAgentHelper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "android.software.slices_disabled"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 144
    new-instance p1, Lcom/android/server/backup/SliceBackupHelper;

    invoke-direct {p1, p0}, Lcom/android/server/backup/SliceBackupHelper;-><init>(Landroid/content/Context;)V

    const-string/jumbo p2, "slices"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 146
    :cond_1
    new-instance p1, Lcom/android/server/backup/PeopleBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/backup/PeopleBackupHelper;-><init>(I)V

    const-string/jumbo p2, "people"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 147
    new-instance p1, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;-><init>(I)V

    const-string p2, "app_locales"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 148
    new-instance p1, Lcom/android/server/backup/AppGrammaticalGenderBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/backup/AppGrammaticalGenderBackupHelper;-><init>(I)V

    const-string p2, "app_gender"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 150
    new-instance p1, Lcom/android/server/backup/CompanionBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/backup/CompanionBackupHelper;-><init>(I)V

    const-string p2, "companion"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 151
    new-instance p1, Lcom/android/server/backup/SystemGrammaticalGenderBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/backup/SystemGrammaticalGenderBackupHelper;-><init>(I)V

    const-string/jumbo p2, "system_gender"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 153
    new-instance p1, Lcom/android/server/display/DisplayBackupHelper;

    iget p2, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {p1, p2}, Lcom/android/server/display/DisplayBackupHelper;-><init>(I)V

    const-string p2, "display"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    .line 159
    invoke-virtual {p0}, Landroid/app/backup/BackupAgentHelper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "android.hardware.type.watch"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 160
    new-instance p1, Lcom/android/server/backup/WearBackupHelper;

    invoke-direct {p1}, Lcom/android/server/backup/WearBackupHelper;-><init>()V

    const-string/jumbo p2, "wear"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/backup/SystemBackupAgent;->addHelperIfEligibleForUser(Ljava/lang/String;Landroid/app/backup/BackupHelperWithLogger;)V

    :cond_2
    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 3

    .line 175
    new-instance v0, Landroid/app/backup/WallpaperBackupHelper;

    const-string v1, "/data/data/com.android.settings/files/wallpaper"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    const-string/jumbo v2, "wallpaper"

    invoke-virtual {p0, v2, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 179
    new-instance v0, Landroid/app/backup/WallpaperBackupHelper;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    const-string/jumbo v1, "system_files"

    invoke-virtual {p0, v1, v0}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 182
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 5

    .line 192
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Restoring file domain="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " path="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SystemBackupAgent"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string/jumbo p0, "r"

    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string/jumbo v0, "wallpaper"

    if-eqz p0, :cond_1

    .line 200
    const-string/jumbo p0, "wallpaper_info.xml"

    invoke-virtual {p6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    .line 201
    new-instance p0, Ljava/io/File;

    sget-object v3, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 204
    new-instance p0, Ljava/io/File;

    sget-object v3, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    .line 211
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping unrecognized system file: [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " : "

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " ]"

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v1, p5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-wide p5, p7

    move-wide p7, p9

    move-object p9, p0

    .line 213
    invoke-static/range {p1 .. p9}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    if-eqz v2, :cond_3

    .line 217
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Landroid/app/IWallpaperManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_3

    .line 221
    :try_start_1
    invoke-interface {p0}, Landroid/app/IWallpaperManager;->settingsRestored()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 223
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t restore settings\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    if-eqz v2, :cond_3

    .line 230
    new-instance p0, Ljava/io/File;

    sget-object p1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 231
    new-instance p0, Ljava/io/File;

    sget-object p1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_3
    :goto_1
    return-void
.end method
