.class public Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;
.super Landroid/content/pm/CrossProfileAppsInternal;
.source "CrossProfileAppsServiceImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;)V
    .locals 0

    .line 939
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    invoke-direct {p0}, Landroid/content/pm/CrossProfileAppsInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public getTargetUserProfiles(Ljava/lang/String;I)Ljava/util/List;
    .locals 0

    .line 960
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->-$$Nest$mgetTargetUserProfilesUnchecked(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public setInteractAcrossProfilesAppOp(Ljava/lang/String;II)V
    .locals 0

    .line 966
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->-$$Nest$msetInteractAcrossProfilesAppOpUnchecked(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;II)V

    return-void
.end method

.method public verifyPackageHasInteractAcrossProfilePermission(Ljava/lang/String;I)Z
    .locals 2

    .line 945
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    invoke-static {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->-$$Nest$fgetmInjector(Lcom/android/server/pm/CrossProfileAppsServiceImpl;)Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    move-result-object v0

    .line 946
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 947
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    .line 946
    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 945
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 948
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->verifyUidHasInteractAcrossProfilePermission(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public verifyUidHasInteractAcrossProfilePermission(Ljava/lang/String;I)Z
    .locals 1

    .line 953
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 954
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;->this$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->-$$Nest$mhasInteractAcrossProfilesPermission(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method
