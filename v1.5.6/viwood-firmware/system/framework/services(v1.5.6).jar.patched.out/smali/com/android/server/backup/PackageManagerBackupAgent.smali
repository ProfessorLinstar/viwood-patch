.class public Lcom/android/server/backup/PackageManagerBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "PackageManagerBackupAgent.java"


# static fields
.field static final ANCESTRAL_RECORD_KEY:Ljava/lang/String; = "@ancestral_record@"

.field static final ANCESTRAL_RECORD_VERSION:I = 0x1

.field static final GLOBAL_METADATA_KEY:Ljava/lang/String; = "@meta@"

.field static final STATE_FILE_HEADER:Ljava/lang/String; = "=state="

.field static final STATE_FILE_VERSION:I = 0x2


# instance fields
.field public mAllPackages:Ljava/util/List;

.field public final mExisting:Ljava/util/HashSet;

.field public mHasMetadata:Z

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mRestoredHome:Landroid/content/ComponentName;

.field public mRestoredHomeInstaller:Ljava/lang/String;

.field public mRestoredHomeSigHashes:Ljava/util/ArrayList;

.field public mRestoredHomeVersion:J

.field public mRestoredSignatures:Ljava/util/HashMap;

.field public mStateVersions:Ljava/util/HashMap;

.field public mStoredAncestralRecordVersion:I

.field public mStoredHomeComponent:Landroid/content/ComponentName;

.field public mStoredHomeSigHashes:Ljava/util/ArrayList;

.field public mStoredHomeVersion:J

.field public mStoredIncrementalVersion:Ljava/lang/String;

.field public mStoredSdkVersion:I

.field public mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fputmHasMetadata(Lcom/android/server/backup/PackageManagerBackupAgent;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRestoredHome(Lcom/android/server/backup/PackageManagerBackupAgent;Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHome:Landroid/content/ComponentName;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRestoredHomeInstaller(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHomeInstaller:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRestoredHomeSigHashes(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHomeSigHashes:Ljava/util/ArrayList;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRestoredHomeVersion(Lcom/android/server/backup/PackageManagerBackupAgent;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredHomeVersion:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRestoredSignatures(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/util/HashMap;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmStoredIncrementalVersion(Lcom/android/server/backup/PackageManagerBackupAgent;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmStoredSdkVersion(Lcom/android/server/backup/PackageManagerBackupAgent;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$smreadSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;ILcom/android/server/backup/utils/BackupEligibilityRules;)V
    .locals 1

    .line 138
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/backup/PackageManagerBackupAgent;->init(Landroid/content/pm/PackageManager;Ljava/util/List;I)V

    .line 141
    invoke-virtual {p0, p3}, Lcom/android/server/backup/PackageManagerBackupAgent;->evaluateStorablePackages(Lcom/android/server/backup/utils/BackupEligibilityRules;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/util/List;I)V
    .locals 1

    .line 133
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    .line 134
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/PackageManagerBackupAgent;->init(Landroid/content/pm/PackageManager;Ljava/util/List;I)V

    return-void
.end method

.method public static getStorableApplications(Landroid/content/pm/PackageManager;ILcom/android/server/backup/utils/BackupEligibilityRules;)Ljava/util/List;
    .locals 1

    const/high16 v0, 0x8000000

    .line 165
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    .line 166
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 168
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 169
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;
    .locals 8

    .line 495
    const-string v0, "PMBA"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v3, 0x14

    if-gt v2, v3, :cond_3

    .line 515
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_1

    .line 517
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 518
    new-array v7, v6, [B

    .line 519
    invoke-virtual {p0, v7}, Ljava/io/DataInputStream;->read([B)I

    .line 520
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x20

    if-eq v6, v7, :cond_0

    const/4 v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    .line 528
    invoke-static {v3}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v3

    .line 506
    :cond_3
    const-string p0, "Suspiciously large sig count in restore data; aborting"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v2, "Bad restore state"

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 498
    :catch_0
    const-string p0, "Read empty signature block"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 533
    :catch_1
    const-string p0, "Unable to read signatures"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V
    .locals 1

    .line 413
    array-length v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 414
    array-length p1, p2

    invoke-virtual {p0, p2, p1}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    return-void
.end method

.method public static writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V
    .locals 4

    .line 482
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 485
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, [B

    .line 486
    array-length v3, v2

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 487
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeStateFile(Ljava/util/List;Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    .line 656
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 657
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 658
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 663
    :try_start_0
    const-string p1, "=state="

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 664
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 667
    const-string p1, "@ancestral_record@"

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 668
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 671
    const-string p1, "@meta@"

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 672
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 673
    sget-object p1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 676
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 677
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 678
    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    if-eqz v1, :cond_0

    const/high16 v1, -0x80000000

    .line 679
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 680
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_0

    .line 682
    :cond_0
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0

    .line 686
    :cond_1
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 688
    :catch_0
    const-string p0, "PMBA"

    const-string p1, "Unable to write package manager state file!"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public evaluateStorablePackages(Lcom/android/server/backup/utils/BackupEligibilityRules;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mUserId:I

    invoke-static {v0, v1, p1}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;ILcom/android/server/backup/utils/BackupEligibilityRules;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    return-void
.end method

.method public final getAncestralRecordVersionValue(Landroid/app/backup/BackupDataInput;)I
    .locals 2

    .line 448
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 449
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object p0

    .line 450
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v0

    .line 454
    const-string v1, "@ancestral_record@"

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 456
    new-array p0, v0, [B

    const/4 v1, 0x0

    .line 457
    invoke-virtual {p1, p0, v1, v0}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 458
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 459
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 461
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getRestoreDataConsumer(I)Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 474
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized ANCESTRAL_RECORD_VERSION: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PMBA"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 472
    :cond_0
    new-instance p1, Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;

    invoke-direct {p1, p0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent$AncestralVersion1RestoreDataConsumer;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;Lcom/android/server/backup/PackageManagerBackupAgent-IA;)V

    return-object p1

    .line 470
    :cond_1
    new-instance p1, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;

    invoke-direct {p1, p0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent$LegacyRestoreDataConsumer;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;Lcom/android/server/backup/PackageManagerBackupAgent-IA;)V

    return-object p1
.end method

.method public getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    if-nez p0, :cond_0

    .line 186
    const-string p0, "PMBA"

    const-string p1, "getRestoredMetadata() before metadata read!"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 190
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    return-object p0
.end method

.method public getRestoredPackages()Ljava/util/Set;
    .locals 1

    .line 194
    iget-object p0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    if-nez p0, :cond_0

    .line 195
    const-string p0, "PMBA"

    const-string v0, "getRestoredPackages() before metadata read!"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 204
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getSourceSdk()I
    .locals 0

    .line 181
    iget p0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    return p0
.end method

.method public hasMetadata()Z
    .locals 0

    .line 177
    iget-boolean p0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    return p0
.end method

.method public final init(Landroid/content/pm/PackageManager;Ljava/util/List;I)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 146
    iput-object p2, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    const/4 p1, 0x0

    .line 147
    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 148
    iput-boolean p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    .line 150
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    iput p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 151
    sget-object p1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 152
    iput p3, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mUserId:I

    return-void
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 11

    .line 214
    const-string v0, "@meta@"

    const-string v1, "@ancestral_record@"

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 215
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/server/backup/PackageManagerBackupAgent;->parseStateFile(Landroid/os/ParcelFileDescriptor;)V

    .line 221
    iget-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    const-string v4, "PMBA"

    if-eqz p1, :cond_0

    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 222
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 223
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Previous metadata "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mismatch vs "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - rewriting"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 241
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v5, 0x1

    if-nez p1, :cond_2

    .line 243
    const-string p1, "No ancestral record version in the old state. Storing ancestral record version key"

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 248
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    goto :goto_0

    .line 250
    :cond_2
    iget p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredAncestralRecordVersion:I

    if-eq p1, v5, :cond_3

    .line 252
    const-string p1, "Ancestral record version has changed from old state. Storingancestral record version key"

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 257
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    .line 259
    iget-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_3
    iget-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    .line 274
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 275
    iget-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 277
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 278
    sget-object p1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    goto :goto_1

    .line 283
    :cond_4
    iget-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 288
    :goto_1
    iget-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 289
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 290
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_5

    goto :goto_2

    .line 296
    :cond_5
    :try_start_1
    iget-object v6, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v7, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mUserId:I

    const/high16 v8, 0x8000000

    .line 297
    invoke-virtual {v6, v1, v8, v7}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    :try_start_2
    iget-object v7, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 313
    iget-object v7, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-nez v5, :cond_6

    .line 315
    invoke-virtual {v6}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    .line 316
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    iget-wide v9, v9, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_6

    goto :goto_2

    .line 321
    :cond_6
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez v7, :cond_7

    .line 323
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not backing up package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " since it appears to have no signatures."

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 340
    :cond_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 341
    iget v8, v6, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    if-eqz v8, :cond_8

    const/high16 v8, -0x80000000

    .line 342
    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 343
    invoke-virtual {v6}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_3

    .line 345
    :cond_8
    iget v6, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 348
    :goto_3
    invoke-virtual {v7}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v6

    .line 350
    invoke-static {v6}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object v6

    .line 349
    invoke-static {v3, v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeSignatureHashArray(Ljava/io/DataOutputStream;Ljava/util/ArrayList;)V

    .line 364
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {p2, v1, v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V

    goto/16 :goto_2

    .line 302
    :catch_0
    iget-object v6, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 371
    :cond_9
    iget-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    if-eqz v5, :cond_b

    .line 376
    iget-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ancestral state updated - Deleting uninstalled package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from existing backup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    .line 382
    invoke-virtual {p2, v0, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    goto :goto_4

    .line 384
    :cond_a
    iget-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 408
    :cond_b
    iget-object p0, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mAllPackages:Ljava/util/List;

    invoke-static {p0, p3}, Lcom/android/server/backup/PackageManagerBackupAgent;->writeStateFile(Ljava/util/List;Landroid/os/ParcelFileDescriptor;)V

    return-void

    .line 403
    :catch_1
    const-string p0, "Unable to write package backup data file!"

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 432
    invoke-virtual {p0, p1}, Lcom/android/server/backup/PackageManagerBackupAgent;->getAncestralRecordVersionValue(Landroid/app/backup/BackupDataInput;)I

    move-result p2

    .line 434
    invoke-virtual {p0, p2}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoreDataConsumer(I)Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;

    move-result-object p0

    if-nez p0, :cond_0

    .line 436
    const-string p0, "PMBA"

    const-string p1, "Ancestral restore set version is unknown to this Android version; not restoring"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 442
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/server/backup/PackageManagerBackupAgent$RestoreDataConsumer;->consumeRestoreData(Landroid/app/backup/BackupDataInput;)V

    return-void
.end method

.method public final parseStateFile(Landroid/os/ParcelFileDescriptor;)V
    .locals 8

    .line 540
    const-string v0, "@meta@"

    const-string v1, "@ancestral_record@"

    const-string v2, "PMBA"

    iget-object v3, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 541
    iget-object v3, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    .line 542
    iput v3, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    const/4 v4, 0x0

    .line 543
    iput-object v4, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    .line 544
    iput-object v4, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeComponent:Landroid/content/ComponentName;

    const-wide/16 v5, 0x0

    .line 545
    iput-wide v5, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeVersion:J

    .line 546
    iput-object v4, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeSigHashes:Ljava/util/ArrayList;

    const/4 v5, -0x1

    .line 547
    iput v5, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredAncestralRecordVersion:I

    .line 553
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 554
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 555
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 559
    :try_start_0
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    .line 562
    const-string v6, "=state="

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 563
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    const/4 v6, 0x2

    if-le p1, v6, :cond_0

    .line 565
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported state file version "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", redoing from start"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto/16 :goto_4

    .line 572
    :cond_0
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 579
    :cond_1
    const-string v3, "Older version of saved state - rewriting"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    .line 584
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 585
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredAncestralRecordVersion:I

    if-nez v3, :cond_2

    .line 587
    iget-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 589
    :cond_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 594
    :cond_3
    const-string v1, "Older version of saved state - does not contain ancestral record version"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :goto_1
    const-string v1, "@home@"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 604
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeComponent:Landroid/content/ComponentName;

    .line 605
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeVersion:J

    .line 606
    invoke-static {v5}, Lcom/android/server/backup/PackageManagerBackupAgent;->readSignatureHashArray(Ljava/io/DataInputStream;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredHomeSigHashes:Ljava/util/ArrayList;

    .line 608
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    .line 614
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 615
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 616
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredIncrementalVersion:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 618
    iget-object p1, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_5
    :goto_2
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    .line 628
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_6

    .line 631
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    goto :goto_3

    :cond_6
    int-to-long v0, v0

    :goto_3
    if-nez v3, :cond_7

    .line 637
    iget-object v6, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mExisting:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_7
    iget-object v6, p0, Lcom/android/server/backup/PackageManagerBackupAgent;->mStateVersions:Ljava/util/HashMap;

    new-instance v7, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    invoke-direct {v7, p0, v0, v1, v4}, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;-><init>(Lcom/android/server/backup/PackageManagerBackupAgent;JLjava/util/ArrayList;)V

    invoke-virtual {v6, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 621
    :cond_8
    const-string p0, "No global metadata in state file!"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 645
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to read Package Manager state file: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    return-void
.end method
