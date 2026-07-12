.class public final Lcom/android/server/permission/access/util/PermissionApex;
.super Ljava/lang/Object;
.source "PermissionApex.kt"


# static fields
.field public static final INSTANCE:Lcom/android/server/permission/access/util/PermissionApex;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/android/server/permission/access/util/PermissionApex;

    invoke-direct {v0}, Lcom/android/server/permission/access/util/PermissionApex;-><init>()V

    sput-object v0, Lcom/android/server/permission/access/util/PermissionApex;->INSTANCE:Lcom/android/server/permission/access/util/PermissionApex;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getApexEnvironment()Landroid/content/ApexEnvironment;
    .locals 0

    .line 35
    const-string p0, "com.android.permission"

    invoke-static {p0}, Landroid/content/ApexEnvironment;->getApexEnvironment(Ljava/lang/String;)Landroid/content/ApexEnvironment;

    move-result-object p0

    return-object p0
.end method

.method public final getSystemDataDirectory()Ljava/io/File;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/android/server/permission/access/util/PermissionApex;->getApexEnvironment()Landroid/content/ApexEnvironment;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ApexEnvironment;->getDeviceProtectedDataDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public final getUserDataDirectory(I)Ljava/io/File;
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/android/server/permission/access/util/PermissionApex;->getApexEnvironment()Landroid/content/ApexEnvironment;

    move-result-object p0

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ApexEnvironment;->getDeviceProtectedDataDirForUser(Landroid/os/UserHandle;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
