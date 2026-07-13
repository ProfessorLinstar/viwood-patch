.class public Lcom/android/server/pm/SettingsXml$Serializer;
.super Ljava/lang/Object;
.source "SettingsXml.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mWriteSection:Lcom/android/server/pm/SettingsXml$WriteSectionImpl;

.field public final mXmlSerializer:Lcom/android/modules/utils/TypedXmlSerializer;


# direct methods
.method public constructor <init>(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/server/pm/SettingsXml$Serializer;->mXmlSerializer:Lcom/android/modules/utils/TypedXmlSerializer;

    .line 77
    new-instance v0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;-><init>(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/SettingsXml-IA;)V

    iput-object v0, p0, Lcom/android/server/pm/SettingsXml$Serializer;->mWriteSection:Lcom/android/server/pm/SettingsXml$WriteSectionImpl;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/SettingsXml-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingsXml$Serializer;-><init>(Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$Serializer;->mWriteSection:Lcom/android/server/pm/SettingsXml$WriteSectionImpl;

    invoke-static {v0}, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->-$$Nest$mcloseCompletely(Lcom/android/server/pm/SettingsXml$WriteSectionImpl;)V

    .line 87
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$Serializer;->mXmlSerializer:Lcom/android/modules/utils/TypedXmlSerializer;

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    return-void
.end method

.method public startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$Serializer;->mWriteSection:Lcom/android/server/pm/SettingsXml$WriteSectionImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    return-object p0
.end method
