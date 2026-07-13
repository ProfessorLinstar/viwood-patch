.class public interface abstract Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;
.super Ljava/lang/Object;
.source "SettingsHelper.java"

# interfaces
.implements Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;


# virtual methods
.method public abstract onSettingChanged()V
.end method

.method public onSettingChanged(I)V
    .locals 0

    .line 51
    invoke-interface {p0}, Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;->onSettingChanged()V

    return-void
.end method
