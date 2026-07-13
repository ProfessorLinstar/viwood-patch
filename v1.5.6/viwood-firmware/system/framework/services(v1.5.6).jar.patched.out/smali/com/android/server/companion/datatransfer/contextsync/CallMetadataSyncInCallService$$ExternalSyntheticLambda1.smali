.class public final synthetic Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    check-cast p1, Landroid/telecom/Call;

    invoke-static {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->$r8$lambda$Kh_TmD3nr5AK1Sc_BRzZim7OXuE(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;Landroid/telecom/Call;)Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;

    move-result-object p0

    return-object p0
.end method
