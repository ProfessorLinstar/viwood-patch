.class public final Lcom/android/server/om/IdmapManager;
.super Ljava/lang/Object;
.source "IdmapManager.java"


# static fields
.field public static final VENDOR_IS_Q_OR_LATER:Z


# instance fields
.field public final mConfigSignaturePackage:Ljava/lang/String;

.field public final mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

.field public final mPackageManager:Lcom/android/server/om/PackageManagerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    const-string/jumbo v0, "ro.vndk.version"

    const-string v1, "29"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 56
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 62
    :catch_0
    :goto_0
    sput-boolean v1, Lcom/android/server/om/IdmapManager;->VENDOR_IS_Q_OR_LATER:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/om/IdmapDaemon;Lcom/android/server/om/PackageManagerHelper;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p2, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 90
    iput-object p1, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    .line 91
    invoke-interface {p2}, Lcom/android/server/om/PackageManagerHelper;->getConfigSignaturePackage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/om/IdmapManager;->mConfigSignaturePackage:Ljava/lang/String;

    return-void
.end method

.method public static toIdmapConstraints(Ljava/util/List;)[Landroid/os/OverlayConstraint;
    .locals 5

    .line 286
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/OverlayConstraint;

    .line 288
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/om/OverlayConstraint;

    .line 289
    new-instance v3, Landroid/os/OverlayConstraint;

    invoke-direct {v3}, Landroid/os/OverlayConstraint;-><init>()V

    .line 290
    invoke-virtual {v2}, Landroid/content/om/OverlayConstraint;->getType()I

    move-result v4

    iput v4, v3, Landroid/os/OverlayConstraint;->type:I

    .line 291
    invoke-virtual {v2}, Landroid/content/om/OverlayConstraint;->getValue()I

    move-result v2

    iput v2, v3, Landroid/os/OverlayConstraint;->value:I

    add-int/lit8 v2, v1, 0x1

    .line 292
    aput-object v3, v0, v1

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final calculateFulfilledPolicies(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;I)I
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-interface {v0, v1, v2, p4}, Lcom/android/server/om/PackageManagerHelper;->signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 217
    :goto_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/om/IdmapManager;->matchesActorSignature(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;I)Z

    move-result p1

    if-eqz p1, :cond_1

    or-int/lit16 v0, v0, 0x80

    .line 224
    :cond_1
    iget-object p1, p0, Lcom/android/server/om/IdmapManager;->mConfigSignaturePackage:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    iget-object p0, p0, Lcom/android/server/om/IdmapManager;->mConfigSignaturePackage:Ljava/lang/String;

    .line 226
    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 225
    invoke-interface {p1, p0, p3, p4}, Lcom/android/server/om/PackageManagerHelper;->signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    or-int/lit16 v0, v0, 0x100

    .line 232
    :cond_2
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    move-result p0

    if-eqz p0, :cond_3

    or-int/lit8 p0, v0, 0x4

    return p0

    .line 237
    :cond_3
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isProduct()Z

    move-result p0

    if-eqz p0, :cond_4

    or-int/lit8 p0, v0, 0x8

    return p0

    .line 242
    :cond_4
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    move-result p0

    if-eqz p0, :cond_5

    or-int/lit8 p0, v0, 0x20

    return p0

    .line 247
    :cond_5
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isOem()Z

    move-result p0

    if-eqz p0, :cond_6

    or-int/lit8 p0, v0, 0x40

    return p0

    .line 253
    :cond_6
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p0

    if-nez p0, :cond_8

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystemExt()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    return v0

    :cond_8
    :goto_1
    or-int/lit8 p0, v0, 0x2

    return p0
.end method

.method public createFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Landroid/os/FabricatedOverlayInfo;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    invoke-virtual {p0, p1}, Lcom/android/server/om/IdmapDaemon;->createFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Landroid/os/FabricatedOverlayInfo;

    move-result-object p0

    return-object p0
.end method

.method public createIdmap(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)I
    .locals 11

    .line 112
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplits()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getPath()Ljava/lang/String;

    move-result-object v4

    move/from16 v9, p6

    .line 114
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v9}, Lcom/android/server/om/IdmapManager;->calculateFulfilledPolicies(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;I)I

    move-result v7

    .line 116
    invoke-virtual {p0, p2, p3}, Lcom/android/server/om/IdmapManager;->enforceOverlayable(Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v8

    .line 117
    invoke-static/range {p7 .. p7}, Lcom/android/server/om/IdmapManager;->toIdmapConstraints(Ljava/util/List;)[Landroid/os/OverlayConstraint;

    move-result-object v10

    .line 118
    iget-object v3, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/om/IdmapDaemon;->verifyIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI[Landroid/os/OverlayConstraint;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 122
    :cond_0
    iget-object v3, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/om/IdmapDaemon;->createIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI[Landroid/os/OverlayConstraint;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    return v2

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "failed to generate idmap for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OverlayManager"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public deleteFabricatedOverlay(Ljava/lang/String;)Z
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    invoke-virtual {p0, p1}, Lcom/android/server/om/IdmapDaemon;->deleteFabricatedOverlay(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public dumpIdmap(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    invoke-virtual {p0, p1}, Lcom/android/server/om/IdmapDaemon;->dumpIdmap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOverlayable(Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .locals 2

    .line 185
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p0

    const/16 v0, 0x1d

    const/4 v1, 0x1

    if-lt p0, v0, :cond_0

    return v1

    .line 190
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 194
    sget-boolean p0, Lcom/android/server/om/IdmapManager;->VENDOR_IS_Q_OR_LATER:Z

    return p0

    .line 199
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->isSignedWithPlatformKey()Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public getFabricatedOverlayInfos()Ljava/util/List;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->getFabricatedOverlayInfos()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public idmapExists(Landroid/content/om/OverlayInfo;)Z
    .locals 1

    .line 145
    iget-object p0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    iget-object v0, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    iget p1, p1, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/om/IdmapDaemon;->idmapExists(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final matchesActorSignature(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;I)Z
    .locals 2

    .line 262
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v1}, Lcom/android/server/om/PackageManagerHelper;->getNamedActors()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 266
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-interface {v1, p1, v0, p3}, Lcom/android/server/om/PackageManagerHelper;->getOverlayableForTarget(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/om/OverlayableInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 267
    iget-object p1, p1, Landroid/content/om/OverlayableInfo;->actor:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 269
    invoke-interface {v0}, Lcom/android/server/om/PackageManagerHelper;->getNamedActors()Ljava/util/Map;

    move-result-object v0

    .line 268
    invoke-static {p1, v0}, Lcom/android/server/om/OverlayActorEnforcer;->getPackageNameForActor(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 270
    iget-object p0, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 271
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 270
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/om/PackageManagerHelper;->signaturesMatching(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeIdmap(Landroid/content/om/OverlayInfo;I)Z
    .locals 1

    .line 137
    :try_start_0
    iget-object p0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    iget-object v0, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/om/IdmapDaemon;->removeIdmap(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 139
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to remove idmap for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OverlayManager"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method
