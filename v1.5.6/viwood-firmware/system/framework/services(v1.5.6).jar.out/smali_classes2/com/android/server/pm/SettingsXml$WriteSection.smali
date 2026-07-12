.class public interface abstract Lcom/android/server/pm/SettingsXml$WriteSection;
.super Ljava/lang/Object;
.source "SettingsXml.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;
.end method

.method public abstract attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;
.end method

.method public abstract attribute(Ljava/lang/String;Z)Lcom/android/server/pm/SettingsXml$WriteSection;
.end method

.method public abstract close()V
.end method

.method public abstract finish()V
.end method

.method public abstract startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;
.end method
