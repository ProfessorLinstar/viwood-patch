.class public abstract Lcom/android/server/pm/SettingsXml;
.super Ljava/lang/Object;
.source "SettingsXml.java"


# direct methods
.method public static parser(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/SettingsXml$ReadSection;
    .locals 1

    .line 65
    new-instance v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    invoke-direct {v0, p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;)V

    return-object v0
.end method

.method public static serializer(Lcom/android/modules/utils/TypedXmlSerializer;)Lcom/android/server/pm/SettingsXml$Serializer;
    .locals 2

    .line 60
    new-instance v0, Lcom/android/server/pm/SettingsXml$Serializer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/SettingsXml$Serializer;-><init>(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/SettingsXml-IA;)V

    return-object v0
.end method
