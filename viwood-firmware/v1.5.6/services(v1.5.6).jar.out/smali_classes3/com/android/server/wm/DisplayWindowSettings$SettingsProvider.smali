.class public interface abstract Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;
.super Ljava/lang/Object;
.source "DisplayWindowSettings.java"


# virtual methods
.method public abstract clearDisplaySettings(Landroid/view/DisplayInfo;)V
.end method

.method public abstract getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
.end method

.method public abstract getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
.end method

.method public abstract onDisplayRemoved(Landroid/view/DisplayInfo;)V
.end method

.method public abstract updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V
.end method
