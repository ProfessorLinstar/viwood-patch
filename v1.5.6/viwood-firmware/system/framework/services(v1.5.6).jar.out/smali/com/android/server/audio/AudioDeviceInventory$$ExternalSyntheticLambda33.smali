.class public final synthetic Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->$r8$lambda$u-8GH9DcPTZOZ9Aa2Zd9hNaoCwg(Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;I)Z

    move-result p0

    return p0
.end method
