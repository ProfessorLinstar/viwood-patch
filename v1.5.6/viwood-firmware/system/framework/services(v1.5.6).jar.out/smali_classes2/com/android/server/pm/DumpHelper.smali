.class public final Lcom/android/server/pm/DumpHelper;
.super Ljava/lang/Object;
.source "DumpHelper.java"


# instance fields
.field public final mAvailableFeatures:Landroid/util/ArrayMap;

.field public final mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field public final mKnownPackages:Lcom/android/server/pm/KnownPackages;

.field public final mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

.field public final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public final mProtectedBroadcasts:Landroid/util/ArraySet;

.field public final mRequiredVerifierPackages:[Ljava/lang/String;

.field public final mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

.field public final mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

.field public final sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

.field public final sPmsExt:Lcom/mediatek/server/pm/PmsExt;


# direct methods
.method public static synthetic $r8$lambda$m4jNxRY74ZLb_Qhn1z5qrJf1Fyw(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseArray;)V
    .locals 9

    .line 492
    const-string v0, "  Sequence number="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 494
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 496
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 497
    const-string v3, "  User "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 499
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 501
    const-string v4, "    "

    if-nez v3, :cond_0

    .line 502
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 503
    const-string v2, "No packages changed"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    move v5, v0

    :goto_1
    if-ge v5, v3, :cond_1

    .line 506
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 507
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 508
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 509
    const-string/jumbo v8, "seq="

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 511
    const-string v7, ", package="

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Lcom/android/server/pm/StorageEventHelper;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/PackageInstallerService;[Ljava/lang/String;Lcom/android/server/pm/KnownPackages;Lcom/android/server/pm/ChangedPackagesTracker;Landroid/util/ArrayMap;Landroid/util/ArraySet;[Landroid/os/incremental/PerUidReadTimeouts;Lcom/android/server/pm/SnapshotStatistics;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {}, Lcom/mediatek/server/MtkSystemServer;->getInstance()Lcom/mediatek/server/MtkSystemServer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/DumpHelper;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    .line 73
    invoke-static {}, Lcom/mediatek/server/MtkSystemServiceFactory;->getInstance()Lcom/mediatek/server/MtkSystemServiceFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/server/MtkSystemServiceFactory;->makePmsExt()Lcom/mediatek/server/pm/PmsExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/DumpHelper;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    .line 86
    iput-object p1, p0, Lcom/android/server/pm/DumpHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 87
    iput-object p2, p0, Lcom/android/server/pm/DumpHelper;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    .line 88
    iput-object p3, p0, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 89
    iput-object p4, p0, Lcom/android/server/pm/DumpHelper;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 90
    iput-object p5, p0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 91
    iput-object p6, p0, Lcom/android/server/pm/DumpHelper;->mKnownPackages:Lcom/android/server/pm/KnownPackages;

    .line 92
    iput-object p7, p0, Lcom/android/server/pm/DumpHelper;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 93
    iput-object p8, p0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 94
    iput-object p9, p0, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    .line 95
    iput-object p10, p0, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    .line 96
    iput-object p11, p0, Lcom/android/server/pm/DumpHelper;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    return-void
.end method


# virtual methods
.method public doDump(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 101
    new-instance v5, Lcom/android/server/pm/DumpState;

    invoke-direct {v5}, Lcom/android/server/pm/DumpState;-><init>()V

    const/4 v8, 0x0

    move v4, v8

    .line 105
    :goto_0
    array-length v6, v3

    const/16 v9, 0x8

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v4, v6, :cond_8

    .line 106
    aget-object v6, v3, v4

    if-eqz v6, :cond_8

    .line 107
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_8

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2d

    if-eq v12, v13, :cond_0

    goto/16 :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 112
    const-string v12, "-a"

    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    const-string v12, "-h"

    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 115
    invoke-virtual {v0, v2}, Lcom/android/server/pm/DumpHelper;->printHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 117
    :cond_2
    const-string v12, "--checkin"

    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 118
    invoke-virtual {v5, v11}, Lcom/android/server/pm/DumpState;->setCheckIn(Z)V

    goto :goto_0

    .line 119
    :cond_3
    const-string v12, "--all-components"

    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 120
    invoke-virtual {v5, v10}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    goto :goto_0

    .line 121
    :cond_4
    const-string v10, "-f"

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 122
    invoke-virtual {v5, v11}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    goto :goto_0

    .line 123
    :cond_5
    const-string v10, "--include-apex"

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 124
    invoke-virtual {v5, v9}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    goto :goto_0

    .line 125
    :cond_6
    const-string v9, "--proto"

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 126
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/pm/DumpHelper;->dumpProto(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;)V

    return-void

    .line 129
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown argument: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; use -h for help"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    :cond_8
    :goto_1
    array-length v6, v3

    const/high16 v9, 0x200000

    const/high16 v12, 0x100000

    const/high16 v13, 0x80000

    const v14, 0x8000

    const/16 v15, 0x2000

    if-ge v4, v6, :cond_46

    .line 135
    aget-object v6, v3, v4

    add-int/lit8 v10, v4, 0x1

    .line 138
    const-string v8, "android"

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_45

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto/16 :goto_19

    .line 143
    :cond_9
    const-string v8, "check-permission"

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 144
    array-length v5, v3

    if-lt v10, v5, :cond_a

    .line 145
    const-string v0, "Error: check-permission missing permission argument"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 148
    :cond_a
    aget-object v5, v3, v10

    add-int/lit8 v6, v4, 0x2

    .line 150
    array-length v7, v3

    if-lt v6, v7, :cond_b

    .line 151
    const-string v0, "Error: check-permission missing package argument"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 155
    :cond_b
    aget-object v6, v3, v6

    add-int/lit8 v4, v4, 0x3

    .line 157
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 158
    array-length v8, v3

    if-ge v4, v8, :cond_c

    .line 160
    :try_start_0
    aget-object v7, v3, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 162
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: check-permission user argument is not a number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v3, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_c
    :goto_2
    const-wide/16 v3, -0x1

    .line 169
    invoke-interface {v1, v6, v3, v4}, Lcom/android/server/pm/Computer;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 172
    iget-object v0, v0, Lcom/android/server/pm/DumpHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const-string v3, "default:0"

    invoke-interface {v0, v1, v5, v3, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void

    .line 175
    :cond_d
    const-string v4, "l"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    const-string v4, "libraries"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto/16 :goto_18

    .line 177
    :cond_e
    const-string v4, "f"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "features"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    const/4 v3, 0x2

    goto/16 :goto_17

    .line 179
    :cond_10
    const-string/jumbo v4, "r"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3a

    const-string/jumbo v8, "resolvers"

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    goto/16 :goto_10

    .line 203
    :cond_11
    const-string/jumbo v4, "perm"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    const-string/jumbo v4, "permissions"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto/16 :goto_f

    .line 205
    :cond_12
    const-string/jumbo v4, "permission"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 206
    array-length v4, v3

    if-lt v10, v4, :cond_13

    .line 207
    const-string v0, "Error: permission requires permission name"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 210
    :cond_13
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 211
    :goto_3
    array-length v6, v3

    if-ge v10, v6, :cond_14

    .line 212
    aget-object v6, v3, v10

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_14
    const/16 v3, 0x1c0

    .line 215
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1b

    .line 217
    :cond_15
    const-string/jumbo v4, "pref"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string/jumbo v4, "preferred"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_16
    const/16 v3, 0x1000

    goto/16 :goto_e

    .line 219
    :cond_17
    const-string/jumbo v4, "preferred-xml"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v8, "--full"

    if-eqz v4, :cond_18

    .line 220
    invoke-virtual {v5, v15}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 221
    array-length v4, v3

    if-ge v10, v4, :cond_46

    aget-object v3, v3, v10

    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 222
    invoke-virtual {v5, v11}, Lcom/android/server/pm/DumpState;->setFullPreferred(Z)V

    goto/16 :goto_1a

    .line 225
    :cond_18
    const-string v4, "d"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    const-string v4, "domain-preferred-apps"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    :cond_19
    const/high16 v3, 0x40000

    goto/16 :goto_d

    .line 227
    :cond_1a
    const-string/jumbo v4, "p"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    const-string/jumbo v4, "packages"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    goto/16 :goto_c

    .line 229
    :cond_1b
    const-string/jumbo v4, "q"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string/jumbo v4, "queries"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_1c
    const/high16 v3, 0x4000000

    goto/16 :goto_b

    .line 231
    :cond_1d
    const-string/jumbo v4, "s"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    const-string/jumbo v4, "shared-users"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    goto/16 :goto_a

    .line 236
    :cond_1e
    const-string/jumbo v4, "prov"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    const-string/jumbo v4, "providers"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    goto/16 :goto_9

    .line 238
    :cond_1f
    const-string v4, "m"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    const-string/jumbo v4, "messages"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    :cond_20
    const/16 v3, 0x200

    goto/16 :goto_8

    .line 240
    :cond_21
    const-string/jumbo v4, "v"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    const-string/jumbo v4, "verifiers"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    goto/16 :goto_7

    .line 242
    :cond_22
    const-string v4, "dv"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    const-string v4, "domain-verifier"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    goto/16 :goto_6

    .line 244
    :cond_23
    const-string/jumbo v4, "version"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 245
    invoke-virtual {v5, v14}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    .line 246
    :cond_24
    const-string v4, "k"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    const-string v4, "keysets"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    goto/16 :goto_5

    .line 248
    :cond_25
    const-string v4, "installs"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    const/high16 v3, 0x10000

    .line 249
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    .line 250
    :cond_26
    const-string v4, "frozen"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 251
    invoke-virtual {v5, v13}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    .line 252
    :cond_27
    const-string/jumbo v4, "volumes"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    const/high16 v3, 0x800000

    .line 253
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    .line 254
    :cond_28
    const-string v4, "dexopt"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 255
    invoke-virtual {v5, v12}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    .line 256
    :cond_29
    const-string v4, "compiler-stats"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 257
    invoke-virtual {v5, v9}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    .line 258
    :cond_2a
    const-string v4, "changes"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/high16 v3, 0x400000

    .line 259
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    .line 260
    :cond_2b
    const-string/jumbo v4, "service-permissions"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/high16 v3, 0x1000000

    .line 261
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    .line 262
    :cond_2c
    const-string v4, "known-packages"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/high16 v3, 0x8000000

    .line 263
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    .line 264
    :cond_2d
    const-string/jumbo v4, "t"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    const-string/jumbo v4, "timeouts"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    goto :goto_4

    .line 266
    :cond_2e
    const-string/jumbo v4, "snapshot"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    const/high16 v4, 0x20000000

    .line 267
    invoke-virtual {v5, v4}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 268
    array-length v4, v3

    if-ge v10, v4, :cond_46

    .line 269
    aget-object v4, v3, v10

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const/4 v4, 0x0

    .line 270
    invoke-virtual {v5, v4}, Lcom/android/server/pm/DumpState;->setBrief(Z)V

    goto/16 :goto_1a

    .line 272
    :cond_2f
    const-string v4, "--brief"

    aget-object v3, v3, v10

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 273
    invoke-virtual {v5, v11}, Lcom/android/server/pm/DumpState;->setBrief(Z)V

    goto/16 :goto_1a

    .line 277
    :cond_30
    const-string/jumbo v4, "protected-broadcasts"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    const/high16 v3, 0x40000000    # 2.0f

    .line 278
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    .line 279
    :cond_31
    iget-object v4, v0, Lcom/android/server/pm/DumpHelper;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    invoke-virtual {v4, v6, v2, v3, v10}, Lcom/mediatek/server/pm/PmsExt;->dumpCmdHandle(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_46

    goto/16 :goto_29

    :cond_32
    :goto_4
    const/high16 v3, 0x10000000

    .line 265
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_33
    :goto_5
    const/16 v3, 0x4000

    .line 247
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_34
    :goto_6
    const/high16 v3, 0x20000

    .line 243
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_35
    :goto_7
    const/16 v3, 0x800

    .line 241
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    .line 239
    :goto_8
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_36
    :goto_9
    const/16 v3, 0x400

    .line 237
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_37
    :goto_a
    const/16 v4, 0x100

    .line 232
    invoke-virtual {v5, v4}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 233
    array-length v4, v3

    if-ge v10, v4, :cond_46

    const-string/jumbo v4, "noperm"

    aget-object v3, v3, v10

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    const/4 v3, 0x4

    .line 234
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    goto/16 :goto_1a

    .line 230
    :goto_b
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_38
    :goto_c
    const/16 v3, 0x80

    .line 228
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    .line 226
    :goto_d
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    .line 218
    :goto_e
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    :cond_39
    :goto_f
    const/16 v3, 0x40

    .line 204
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    .line 180
    :cond_3a
    :goto_10
    array-length v6, v3

    if-lt v10, v6, :cond_3b

    const/16 v3, 0x3c

    .line 181
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_1a

    .line 186
    :cond_3b
    :goto_11
    array-length v6, v3

    if-ge v10, v6, :cond_46

    .line 187
    aget-object v6, v3, v10

    .line 188
    const-string v8, "a"

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3c

    const-string v8, "activity"

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3d

    :cond_3c
    const/4 v6, 0x4

    goto :goto_15

    .line 190
    :cond_3d
    const-string/jumbo v8, "s"

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3e

    const-string/jumbo v8, "service"

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3f

    :cond_3e
    const/16 v6, 0x8

    goto :goto_14

    .line 192
    :cond_3f
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_43

    const-string/jumbo v8, "receiver"

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_40

    goto :goto_13

    .line 194
    :cond_40
    const-string v8, "c"

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_42

    const-string v8, "content"

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_41

    goto :goto_12

    .line 197
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown resolver table type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_42
    :goto_12
    const/16 v6, 0x20

    .line 195
    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_16

    :cond_43
    :goto_13
    const/16 v6, 0x10

    .line 193
    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_16

    .line 191
    :goto_14
    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_16

    .line 189
    :goto_15
    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->setDump(I)V

    :goto_16
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    .line 178
    :goto_17
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_1a

    .line 176
    :cond_44
    :goto_18
    invoke-virtual {v5, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_1a

    .line 139
    :cond_45
    :goto_19
    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->setTargetPackageName(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v5, v11}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    :cond_46
    :goto_1a
    const/4 v4, 0x0

    .line 284
    :goto_1b
    invoke-virtual {v5}, Lcom/android/server/pm/DumpState;->getTargetPackageName()Ljava/lang/String;

    move-result-object v3

    .line 285
    invoke-virtual {v5}, Lcom/android/server/pm/DumpState;->isCheckIn()Z

    move-result v6

    if-eqz v3, :cond_47

    .line 289
    invoke-interface {v1, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v8

    if-nez v8, :cond_47

    .line 290
    invoke-interface {v1, v3}, Lcom/android/server/pm/Computer;->isApexPackage(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_47

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_47
    if-eqz v6, :cond_48

    .line 296
    const-string/jumbo v8, "vers,1"

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_48
    if-nez v6, :cond_49

    .line 301
    invoke-virtual {v5, v14}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v8

    if-eqz v8, :cond_49

    if-nez v3, :cond_49

    .line 303
    invoke-interface {v1, v14, v7, v2, v5}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 306
    :cond_49
    const-string v8, "  "

    if-nez v6, :cond_4e

    const/high16 v10, 0x8000000

    .line 307
    invoke-virtual {v5, v10}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v10

    if-eqz v10, :cond_4e

    if-nez v3, :cond_4e

    .line 309
    invoke-virtual {v5}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v10

    if-eqz v10, :cond_4a

    .line 310
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 312
    :cond_4a
    new-instance v10, Lcom/android/internal/util/IndentingPrintWriter;

    const/16 v14, 0x78

    invoke-direct {v10, v2, v8, v14}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 313
    const-string v14, "Known Packages:"

    invoke-virtual {v10, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v14, 0x0

    :goto_1c
    const/16 v9, 0x13

    if-gt v14, v9, :cond_4d

    .line 316
    invoke-static {v14}, Lcom/android/server/pm/KnownPackages;->knownPackageToString(I)Ljava/lang/String;

    move-result-object v9

    .line 317
    invoke-virtual {v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 318
    const-string v9, ":"

    invoke-virtual {v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 319
    iget-object v9, v0, Lcom/android/server/pm/DumpHelper;->mKnownPackages:Lcom/android/server/pm/KnownPackages;

    const/4 v12, 0x0

    invoke-virtual {v9, v1, v14, v12}, Lcom/android/server/pm/KnownPackages;->getKnownPackageNames(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;

    move-result-object v9

    .line 321
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 322
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4b

    .line 323
    const-string/jumbo v9, "none"

    invoke-virtual {v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1e

    .line 325
    :cond_4b
    array-length v12, v9

    const/4 v13, 0x0

    :goto_1d
    if-ge v13, v12, :cond_4c

    aget-object v15, v9, v13

    .line 326
    invoke-virtual {v10, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    const/16 v15, 0x2000

    goto :goto_1d

    .line 329
    :cond_4c
    :goto_1e
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v14, v14, 0x1

    const/high16 v12, 0x100000

    const/high16 v13, 0x80000

    const/16 v15, 0x2000

    goto :goto_1c

    .line 331
    :cond_4d
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_4e
    const/16 v9, 0x800

    .line 334
    invoke-virtual {v5, v9}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v9

    const-string v10, ","

    const-string v12, ")"

    if-eqz v9, :cond_52

    if-nez v3, :cond_52

    if-nez v6, :cond_50

    .line 335
    iget-object v9, v0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackages:[Ljava/lang/String;

    array-length v9, v9

    if-lez v9, :cond_50

    .line 336
    invoke-virtual {v5}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v9

    if-eqz v9, :cond_4f

    .line 337
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 339
    :cond_4f
    const-string v9, "Verifiers:"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    :cond_50
    iget-object v9, v0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackages:[Ljava/lang/String;

    array-length v15, v9

    const/4 v11, 0x0

    :goto_1f
    if-ge v11, v15, :cond_52

    aget-object v13, v9, v11

    if-nez v6, :cond_51

    .line 343
    const-string v14, "  Required: "

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 345
    const-string v14, " (uid="

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v16, v3

    move-object/from16 p4, v4

    const-wide/32 v3, 0x10000000

    const/4 v14, 0x0

    .line 346
    invoke-interface {v1, v13, v3, v4, v14}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v13

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 348
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_20

    :cond_51
    move-object/from16 v16, v3

    move-object/from16 p4, v4

    const/4 v14, 0x0

    .line 350
    const-string/jumbo v3, "vrfy,"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/32 v3, 0x10000000

    .line 353
    invoke-interface {v1, v13, v3, v4, v14}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v13

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(I)V

    :goto_20
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, p4

    move-object/from16 v3, v16

    goto :goto_1f

    :cond_52
    move-object/from16 v16, v3

    move-object/from16 p4, v4

    const/high16 v3, 0x20000

    .line 359
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_57

    if-nez v16, :cond_57

    .line 361
    iget-object v3, v0, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v3}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getProxy()Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    move-result-object v3

    .line 362
    invoke-interface {v3}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_56

    .line 364
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v6, :cond_54

    .line 366
    invoke-virtual {v5}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 367
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 369
    :cond_53
    const-string v4, "Domain Verifier:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    const-string v4, "  Using: "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    const-string v4, " (uid="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v11, v8

    const-wide/32 v8, 0x10000000

    const/4 v14, 0x0

    .line 373
    invoke-interface {v1, v3, v8, v9, v14}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 375
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_21

    :cond_54
    move-object v11, v8

    const-wide/32 v8, 0x10000000

    const/4 v14, 0x0

    if-eqz v3, :cond_55

    .line 377
    const-string v4, "dv,"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 380
    invoke-interface {v1, v3, v8, v9, v14}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(I)V

    :cond_55
    :goto_21
    const/4 v3, 0x1

    goto :goto_22

    :cond_56
    move-object v11, v8

    const/4 v14, 0x0

    .line 384
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 385
    const-string v3, "No Domain Verifier available!"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_21

    :cond_57
    move-object v11, v8

    const/4 v14, 0x0

    goto :goto_21

    .line 389
    :goto_22
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v4

    if-eqz v4, :cond_58

    if-nez v16, :cond_58

    .line 391
    invoke-interface {v1, v3, v7, v2, v5}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_58
    const/4 v3, 0x2

    .line 394
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_5d

    if-nez v16, :cond_5d

    .line 396
    invoke-virtual {v5}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 397
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    :cond_59
    if-nez v6, :cond_5a

    .line 400
    const-string v3, "Features:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    :cond_5a
    iget-object v3, v0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/FeatureInfo;

    if-nez v6, :cond_5c

    .line 405
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    iget-object v8, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 407
    iget v8, v4, Landroid/content/pm/FeatureInfo;->version:I

    if-lez v8, :cond_5b

    .line 408
    const-string v8, " version="

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    iget v4, v4, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 411
    :cond_5b
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    goto :goto_23

    .line 413
    :cond_5c
    const-string v8, "feat,"

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 414
    iget-object v8, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 416
    iget v4, v4, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_23

    .line 421
    :cond_5d
    invoke-interface {v1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v8

    if-nez v6, :cond_5e

    const/4 v3, 0x4

    .line 423
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_5e

    move-object/from16 v3, v16

    .line 424
    invoke-interface {v8, v2, v5, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpActivityResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    goto :goto_24

    :cond_5e
    move-object/from16 v3, v16

    :goto_24
    if-nez v6, :cond_5f

    const/16 v4, 0x10

    .line 427
    invoke-virtual {v5, v4}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 428
    invoke-interface {v8, v2, v5, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpReceiverResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    :cond_5f
    if-nez v6, :cond_60

    const/16 v4, 0x8

    .line 431
    invoke-virtual {v5, v4}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 432
    invoke-interface {v8, v2, v5, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpServiceResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    :cond_60
    if-nez v6, :cond_61

    const/16 v4, 0x20

    .line 435
    invoke-virtual {v5, v4}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 436
    invoke-interface {v8, v2, v5, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpProviderResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    :cond_61
    if-nez v6, :cond_62

    const/16 v4, 0x1000

    .line 440
    invoke-virtual {v5, v4}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v9

    if-eqz v9, :cond_62

    .line 441
    invoke-interface {v1, v4, v7, v2, v5}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_62
    if-nez v6, :cond_63

    const/16 v4, 0x2000

    .line 445
    invoke-virtual {v5, v4}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v9

    if-eqz v9, :cond_63

    if-nez v3, :cond_63

    .line 446
    invoke-interface {v1, v4, v7, v2, v5}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_63
    if-nez v6, :cond_64

    const/high16 v4, 0x40000

    .line 450
    invoke-virtual {v5, v4}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v9

    if-eqz v9, :cond_64

    .line 451
    invoke-interface {v1, v4, v7, v2, v5}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_64
    if-nez v6, :cond_65

    const/16 v4, 0x40

    .line 455
    invoke-virtual {v5, v4}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v4

    if-eqz v4, :cond_65

    move-object/from16 v4, p4

    .line 456
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/server/pm/Computer;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V

    goto :goto_25

    :cond_65
    move-object/from16 v4, p4

    :goto_25
    if-nez v6, :cond_66

    const/16 v9, 0x400

    .line 460
    invoke-virtual {v5, v9}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v9

    if-eqz v9, :cond_66

    .line 461
    invoke-interface {v8, v1, v2, v5, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpContentProviders(Lcom/android/server/pm/Computer;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    :cond_66
    if-nez v6, :cond_67

    const/16 v9, 0x4000

    .line 466
    invoke-virtual {v5, v9}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v9

    if-eqz v9, :cond_67

    .line 467
    invoke-interface {v1, v2, v3, v5}, Lcom/android/server/pm/Computer;->dumpKeySet(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V

    :cond_67
    const/16 v9, 0x80

    .line 470
    invoke-virtual {v5, v9}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v9

    if-eqz v9, :cond_68

    .line 471
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->dumpPackages(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    :cond_68
    if-nez v6, :cond_69

    const/high16 v9, 0x4000000

    .line 475
    invoke-virtual {v5, v9}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v10

    if-eqz v10, :cond_69

    .line 476
    invoke-interface {v1, v9, v7, v2, v5}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_69
    const/16 v9, 0x100

    .line 479
    invoke-virtual {v5, v9}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v9

    if-eqz v9, :cond_6a

    .line 480
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->dumpSharedUsers(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    :cond_6a
    move-object/from16 v16, v3

    move-object v9, v5

    move v10, v6

    if-nez v10, :cond_6c

    const/high16 v3, 0x400000

    .line 485
    invoke-virtual {v9, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_6c

    if-nez v16, :cond_6c

    .line 487
    invoke-virtual {v9}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 488
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 490
    :cond_6b
    const-string v3, "Package Changes:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    iget-object v3, v0, Lcom/android/server/pm/DumpHelper;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    new-instance v4, Lcom/android/server/pm/DumpHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/android/server/pm/DumpHelper$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ChangedPackagesTracker;->iterateAll(Ljava/util/function/BiConsumer;)V

    :cond_6c
    if-nez v10, :cond_6d

    const/high16 v3, 0x80000

    .line 520
    invoke-virtual {v9, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v4

    if-eqz v4, :cond_6d

    if-nez v16, :cond_6d

    .line 522
    invoke-interface {v1, v3, v7, v2, v9}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_6d
    if-nez v10, :cond_6e

    const/high16 v3, 0x800000

    .line 526
    invoke-virtual {v9, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_6e

    if-nez v16, :cond_6e

    .line 528
    iget-object v3, v0, Lcom/android/server/pm/DumpHelper;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    invoke-virtual {v3, v2, v9}, Lcom/android/server/pm/StorageEventHelper;->dumpLoadedVolumes(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_6e
    if-nez v10, :cond_6f

    const/high16 v3, 0x1000000

    .line 532
    invoke-virtual {v9, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_6f

    if-nez v16, :cond_6f

    .line 534
    invoke-interface {v8, v2, v9}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpServicePermissions(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_6f
    if-nez v10, :cond_70

    const/high16 v3, 0x100000

    .line 538
    invoke-virtual {v9, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 539
    invoke-interface {v1, v3, v7, v2, v9}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_70
    if-nez v10, :cond_71

    const/high16 v3, 0x200000

    .line 543
    invoke-virtual {v9, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 544
    invoke-interface {v1, v3, v7, v2, v9}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_71
    const/16 v3, 0x200

    .line 547
    invoke-virtual {v9, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v4

    if-eqz v4, :cond_74

    if-nez v16, :cond_74

    if-nez v10, :cond_73

    .line 550
    invoke-virtual {v9}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v4

    if-eqz v4, :cond_72

    .line 551
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 553
    :cond_72
    invoke-interface {v1, v3, v7, v2, v9}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 554
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 555
    const-string v3, "Package warning messages:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 556
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_26

    .line 558
    :cond_73
    const-string/jumbo v3, "msg,"

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_74
    :goto_26
    if-nez v10, :cond_76

    const/high16 v3, 0x10000

    .line 564
    invoke-virtual {v9, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_76

    if-nez v16, :cond_76

    .line 568
    invoke-virtual {v9}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 569
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 571
    :cond_75
    iget-object v3, v0, Lcom/android/server/pm/DumpHelper;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    const/16 v5, 0x78

    invoke-direct {v4, v2, v11, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageInstallerService;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    :cond_76
    if-nez v10, :cond_77

    const/high16 v3, 0x2000000

    .line 574
    invoke-virtual {v9, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_77

    const/high16 v3, 0x2000000

    .line 575
    invoke-interface {v1, v3, v7, v2, v9}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_77
    if-nez v10, :cond_79

    const/high16 v3, 0x10000000

    .line 579
    invoke-virtual {v9, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_79

    if-nez v16, :cond_79

    .line 581
    invoke-virtual {v9}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v3

    if-eqz v3, :cond_78

    .line 582
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 584
    :cond_78
    const-string v3, "Per UID read timeouts:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    Default timeouts flag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getDefaultTimeouts()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    Known digesters list flag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getKnownDigestersList()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 586
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    Timeouts ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    iget-object v3, v0, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    array-length v4, v3

    move v5, v14

    :goto_27
    if-ge v5, v4, :cond_79

    aget-object v6, v3, v5

    .line 591
    const-string v7, "        ("

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 592
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Landroid/os/incremental/PerUidReadTimeouts;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 593
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "minTimeUs="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v6, Landroid/os/incremental/PerUidReadTimeouts;->minTimeUs:J

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 594
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "minPendingTimeUs="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v6, Landroid/os/incremental/PerUidReadTimeouts;->minPendingTimeUs:J

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 595
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "maxPendingTimeUs="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v6, Landroid/os/incremental/PerUidReadTimeouts;->maxPendingTimeUs:J

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    const/4 v14, 0x0

    goto :goto_27

    :cond_79
    if-nez v10, :cond_7b

    const/high16 v3, 0x20000000

    .line 601
    invoke-virtual {v9, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_7b

    if-nez v16, :cond_7b

    .line 603
    invoke-virtual {v9}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 604
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 606
    :cond_7a
    const-string v3, "Snapshot statistics:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v4

    .line 608
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getUsed()I

    move-result v6

    invoke-virtual {v9}, Lcom/android/server/pm/DumpState;->isBrief()Z

    move-result v7

    .line 607
    const-string v3, "   "

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/SnapshotStatistics;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JIZ)V

    :cond_7b
    if-nez v10, :cond_7d

    const/high16 v1, 0x40000000    # 2.0f

    .line 612
    invoke-virtual {v9, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_7d

    if-nez v16, :cond_7d

    .line 614
    invoke-virtual {v9}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 615
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 617
    :cond_7c
    const-string v1, "Protected broadcast actions:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 618
    :goto_28
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v8, v1, :cond_7d

    .line 619
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 620
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {v1, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    :cond_7d
    :goto_29
    return-void
.end method

.method public final dumpAvailableFeaturesProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5

    .line 713
    iget-object v0, p0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 715
    iget-object v2, p0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/FeatureInfo;

    const-wide v3, 0x20b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/pm/FeatureInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dumpProto(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;)V
    .locals 13

    .line 671
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 673
    iget-object p2, p0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackages:[Ljava/lang/String;

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-wide/32 v4, 0x10000000

    const-wide v6, 0x10500000002L

    const-wide v8, 0x10900000001L

    if-ge v3, v1, :cond_0

    aget-object v10, p2, v3

    const-wide v11, 0x10b00000001L

    .line 675
    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 676
    invoke-virtual {v0, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 680
    invoke-interface {p1, v10, v4, v5, v2}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    .line 678
    invoke-virtual {v0, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 684
    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 687
    :cond_0
    iget-object p2, p0, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {p2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getProxy()Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    move-result-object p2

    .line 688
    invoke-interface {p2}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 690
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-wide v10, 0x10b00000002L

    .line 692
    invoke-virtual {v0, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 693
    invoke-virtual {v0, v8, v9, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 696
    invoke-interface {p1, p2, v4, v5, v2}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p2

    .line 694
    invoke-virtual {v0, v6, v7, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 700
    invoke-virtual {v0, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 703
    :cond_1
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->dumpSharedLibrariesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 704
    invoke-virtual {p0, v0}, Lcom/android/server/pm/DumpHelper;->dumpAvailableFeaturesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 705
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 706
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 707
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->dumpCriticalInfo(Landroid/util/proto/ProtoOutputStream;)V

    .line 708
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public final printHelp(Ljava/io/PrintWriter;)V
    .locals 0

    .line 627
    const-string p0, "Package manager dump options:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    const-string p0, "  [-h] [-f] [--checkin] [--all-components] [cmd] ..."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    const-string p0, "    --checkin: dump for a checkin"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    const-string p0, "    -f: print details of intent filters"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    const-string p0, "    -h: print this help"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    const-string p0, "    --proto: dump data to proto"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 633
    const-string p0, "    --all-components: include all component names in package dump"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    const-string p0, "    --include-apex: includes the apex packages in package dump"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 635
    const-string p0, "  cmd may be one of:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    const-string p0, "    apex: list active APEXes and APEX session state"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    const-string p0, "    l[ibraries]: list known shared libraries"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    const-string p0, "    f[eatures]: list device features"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    const-string p0, "    k[eysets]: print known keysets"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    const-string p0, "    r[esolvers] [activity|service|receiver|content]: dump intent resolvers"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    const-string p0, "    perm[issions]: dump permissions"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    const-string p0, "    permission [name ...]: dump declaration and use of given permission"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    const-string p0, "    pref[erred]: print preferred package settings"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    const-string p0, "    preferred-xml [--full]: print preferred package settings as xml"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    const-string p0, "    prov[iders]: dump content providers"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    const-string p0, "    p[ackages]: dump installed packages"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    const-string p0, "    q[ueries]: dump app queryability calculations"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    const-string p0, "    s[hared-users] [noperm]: dump shared user IDs"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    const-string p0, "    m[essages]: print collected runtime messages"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    const-string p0, "    v[erifiers]: print package verifier info"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    const-string p0, "    d[omain-preferred-apps]: print domains preferred apps"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    const-string p0, "    i[ntent-filter-verifiers]|ifv: print intent filter verifier info"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    const-string p0, "    t[imeouts]: print read timeouts for known digesters"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    const-string p0, "    version: print database version info"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    const-string p0, "    write: write current settings now"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    const-string p0, "    installs: details about install sessions"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    const-string p0, "    check-permission <permission> <package> [<user>]: does pkg hold perm?"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    const-string p0, "    dexopt: dump dexopt state"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    const-string p0, "    compiler-stats: dump compiler statistics"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    const-string p0, "    service-permissions: dump permissions required by services"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    const-string p0, "    snapshot [--full|--brief]: dump snapshot statistics"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    const-string p0, "    protected-broadcasts: print list of protected broadcast actions"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 663
    const-string p0, "    known-packages: dump known packages"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    const-string p0, "    changes: dump the packages that have been changed"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 665
    const-string p0, "    frozen: dump the frozen packages"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    const-string p0, "    volumes: dump the loaded volumes"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    const-string p0, "    <package.name>: info about given package"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
