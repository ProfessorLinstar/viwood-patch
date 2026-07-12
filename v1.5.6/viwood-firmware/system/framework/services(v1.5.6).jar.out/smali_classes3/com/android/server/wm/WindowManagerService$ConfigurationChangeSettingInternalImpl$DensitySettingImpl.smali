.class public final Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl$DensitySettingImpl;
.super Landroid/window/ConfigurationChangeSetting$DensitySetting;
.source "WindowManagerService.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl;Landroid/os/Parcel;)V
    .locals 0

    .line 10800
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl$DensitySettingImpl;->this$1:Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl;

    .line 10801
    invoke-direct {p0, p2}, Landroid/window/ConfigurationChangeSetting$DensitySetting;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl;Landroid/os/Parcel;Lcom/android/server/wm/WindowManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl$DensitySettingImpl;-><init>(Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl;Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public apply(I)V
    .locals 2

    .line 10807
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl$DensitySettingImpl;->this$1:Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Landroid/window/ConfigurationChangeSetting$DensitySetting;->mDisplayId:I

    iget p0, p0, Landroid/window/ConfigurationChangeSetting$DensitySetting;->mDensity:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$msetForcedDensityLockedInternal(Lcom/android/server/wm/WindowManagerService;III)V

    return-void
.end method
