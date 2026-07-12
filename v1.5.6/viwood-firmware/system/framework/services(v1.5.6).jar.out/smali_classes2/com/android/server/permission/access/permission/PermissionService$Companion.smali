.class public final Lcom/android/server/permission/access/permission/PermissionService$Companion;
.super Ljava/lang/Object;
.source "PermissionService.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/permission/access/permission/PermissionService$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFullerPermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2936
    invoke-static {}, Lcom/android/server/permission/access/permission/PermissionService;->access$getFULLER_PERMISSIONS$cp()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
