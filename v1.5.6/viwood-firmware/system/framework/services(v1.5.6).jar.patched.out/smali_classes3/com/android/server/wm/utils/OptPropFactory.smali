.class public Lcom/android/server/wm/utils/OptPropFactory;
.super Ljava/lang/Object;
.source "OptPropFactory.java"


# instance fields
.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageName:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$2O4xsgobKCcu56KjS-bsyJrHb_k(Lcom/android/server/wm/utils/OptPropFactory;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/utils/OptPropFactory;->lambda$create$1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$A7T62WTf2VHvKQdZKzlFqzIymTM(Lcom/android/server/wm/utils/OptPropFactory;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/utils/OptPropFactory;->lambda$create$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/wm/utils/OptPropFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 54
    iput-object p2, p0, Lcom/android/server/wm/utils/OptPropFactory;->mPackageName:Ljava/lang/String;

    .line 55
    iput p3, p0, Lcom/android/server/wm/utils/OptPropFactory;->mUserId:I

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;
    .locals 1

    .line 66
    new-instance v0, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/utils/OptPropFactory;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->-$$Nest$smcreate(Lcom/android/server/wm/utils/OptPropFactory$ThrowableBooleanSupplier;Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p0

    return-object p0
.end method

.method public create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;
    .locals 1

    .line 82
    new-instance v0, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/utils/OptPropFactory;Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->-$$Nest$smcreate(Lcom/android/server/wm/utils/OptPropFactory$ThrowableBooleanSupplier;Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$create$0(Ljava/lang/String;)Z
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/android/server/wm/utils/OptPropFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/server/wm/utils/OptPropFactory;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    iget p0, p0, Lcom/android/server/wm/utils/OptPropFactory;->mUserId:I

    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    .line 68
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$create$1(Ljava/lang/String;)Z
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/utils/OptPropFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/server/wm/utils/OptPropFactory;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    iget p0, p0, Lcom/android/server/wm/utils/OptPropFactory;->mUserId:I

    invoke-virtual {v0, p1, v1, v2, p0}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0

    return p0
.end method
