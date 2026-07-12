.class public Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;
.super Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;
.source "ActiveServices.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;)V
    .locals 0

    .line 2930
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;->this$0:Lcom/android/server/am/ActiveServices;

    .line 2931
    const-string p1, "System exempted"

    invoke-direct {p0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I
    .locals 1

    .line 2937
    iget-object p1, p0, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p1, p1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 2939
    invoke-virtual {p1, p2}, Lcom/android/server/am/AppRestrictionController;->getPotentialSystemExemptionReason(I)I

    move-result p3

    const/4 p5, -0x1

    if-ne p3, p5, :cond_0

    .line 2942
    invoke-virtual {p1, p2, p4}, Lcom/android/server/am/AppRestrictionController;->getPotentialSystemExemptionReason(ILjava/lang/String;)I

    move-result p3

    if-ne p3, p5, :cond_0

    .line 2945
    invoke-virtual {p1, p2, p4}, Lcom/android/server/am/AppRestrictionController;->getPotentialUserAllowedExemptionReason(ILjava/lang/String;)I

    move-result p3

    :cond_0
    const/16 p1, 0x146

    const/4 p2, 0x0

    if-ne p3, p5, :cond_1

    .line 2949
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$SystemExemptedFgsTypePermission;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p3, p1

    :cond_1
    const/16 p0, 0xa

    if-eq p3, p0, :cond_2

    const/16 p0, 0xb

    if-eq p3, p0, :cond_2

    const/16 p0, 0x33

    if-eq p3, p0, :cond_2

    const/16 p0, 0x3f

    if-eq p3, p0, :cond_2

    const/16 p0, 0x41

    if-eq p3, p0, :cond_2

    const/16 p0, 0x12c

    if-eq p3, p0, :cond_2

    const/16 p0, 0x37

    if-eq p3, p0, :cond_2

    const/16 p0, 0x38

    if-eq p3, p0, :cond_2

    if-eq p3, p1, :cond_2

    const/16 p0, 0x147

    if-eq p3, p0, :cond_2

    packed-switch p3, :pswitch_data_0

    return p5

    :cond_2
    :pswitch_0
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x13f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
