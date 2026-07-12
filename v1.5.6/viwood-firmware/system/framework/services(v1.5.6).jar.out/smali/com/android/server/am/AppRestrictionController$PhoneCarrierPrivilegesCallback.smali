.class public Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;
.super Ljava/lang/Object;
.source "AppRestrictionController.java"

# interfaces
.implements Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;


# instance fields
.field public final mPhoneId:I

.field public final synthetic this$0:Lcom/android/server/am/AppRestrictionController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppRestrictionController;I)V
    .locals 0

    .line 3037
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3038
    iput p2, p0, Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;->mPhoneId:I

    return-void
.end method


# virtual methods
.method public onCarrierPrivilegesChanged(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1

    .line 3044
    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p2}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmCarrierPrivilegedLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 3045
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmCarrierPrivilegedApps(Lcom/android/server/am/AppRestrictionController;)Landroid/util/SparseArray;

    move-result-object v0

    iget p0, p0, Lcom/android/server/am/AppRestrictionController$PhoneCarrierPrivilegesCallback;->mPhoneId:I

    .line 3046
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 3045
    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3047
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
