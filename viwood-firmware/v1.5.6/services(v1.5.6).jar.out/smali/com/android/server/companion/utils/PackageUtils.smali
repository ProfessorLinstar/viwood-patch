.class public abstract Lcom/android/server/companion/utils/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# static fields
.field public static final COMPANION_SERVICE_INTENT:Landroid/content/Intent;


# direct methods
.method public static synthetic $r8$lambda$l3VcVK-VVbQBiUAquOE_YuuqIGY(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;
    .locals 0

    .line 84
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 86
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package ["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] is not found."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CDM_PackageUtils"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wvKrkgWPc_EZbyL_kj2nKjr_W4Y(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 151
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.companion.CompanionDeviceService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/companion/utils/PackageUtils;->COMPANION_SERVICE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public static enforceUsesCompanionDeviceFeature(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 98
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/server/companion/utils/PackageUtils;->getPackageInfo(Landroid/content/Context;ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 107
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    if-eqz p0, :cond_2

    .line 109
    array-length p1, p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    aget-object v0, p0, p2

    .line 110
    const-string v1, "android.software.companion_device_setup"

    iget-object v0, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 116
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must declare uses-feature android.software.companion_device_setup in manifest to use this API"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " doesn\'t exist."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCompanionServicesForUser(Landroid/content/Context;I)Ljava/util/Map;
    .locals 5

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 129
    sget-object v0, Lcom/android/server/companion/utils/PackageUtils;->COMPANION_SERVICE_INTENT:Landroid/content/Intent;

    const-wide/16 v1, 0x0

    .line 130
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v1

    .line 129
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    .line 132
    new-instance v1, Ljava/util/HashMap;

    .line 133
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 136
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 138
    const-string v3, "android.permission.BIND_COMPANION_DEVICE_SERVICE"

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CompanionDeviceService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must require android.permission.BIND_COMPANION_DEVICE_SERVICE"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    const-string v3, "CDM_PackageUtils"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_0
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    new-instance v4, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 150
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 153
    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 155
    invoke-static {p0, v2, p1}, Lcom/android/server/companion/utils/PackageUtils;->isPrimaryCompanionDeviceService(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    .line 157
    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static getPackageInfo(Landroid/content/Context;ILjava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/16 v0, 0x5000

    .line 81
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    .line 82
    new-instance v1, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    return-object p0
.end method

.method public static isPackageAllowlisted(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;)Z
    .locals 2

    const v0, 0x1070036

    const v1, 0x1070035

    .line 193
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/server/companion/utils/PackageUtils;->isPackageAllowlisted(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static isPackageAllowlisted(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;II)Z
    .locals 6

    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    .line 210
    invoke-static {p3, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "CDM_PackageUtils"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 211
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not allowlisted."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 215
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 216
    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 217
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    move v0, v2

    .line 218
    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_2

    .line 219
    aget-object v3, p3, v0

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    aget-object v3, p0, v0

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-interface {p4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    .line 227
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    .line 229
    invoke-static {p0}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object p0

    .line 233
    array-length p1, p0

    move p3, v2

    :goto_1
    if-ge p3, p1, :cond_4

    aget-object v0, p0, p3

    .line 234
    invoke-interface {p4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-nez v2, :cond_5

    .line 241
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Certificate mismatch for allowlisted package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v2
.end method

.method public static isPermSyncAutoEnabled(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;)Z
    .locals 2

    const v0, 0x1070038

    const v1, 0x1070037

    .line 202
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/server/companion/utils/PackageUtils;->isPackageAllowlisted(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static isPrimaryCompanionDeviceService(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)Z
    .locals 2

    .line 169
    :try_start_0
    const-string v0, "android.companion.PROPERTY_PRIMARY_COMPANION_DEVICE_SERVICE"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    .line 170
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isRestrictedSettingsAllowed(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1

    .line 253
    const-class p2, Landroid/app/ecm/EnhancedConfirmationManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ecm/EnhancedConfirmationManager;

    const/4 p2, 0x1

    .line 256
    :try_start_0
    const-string v0, "android:access_notifications"

    invoke-virtual {p0, p1, v0}, Landroid/app/ecm/EnhancedConfirmationManager;->isRestricted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p0, p2

    return p0

    :catch_0
    return p2
.end method
