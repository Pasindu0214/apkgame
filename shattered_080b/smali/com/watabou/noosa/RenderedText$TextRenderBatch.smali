.class public Lcom/watabou/noosa/RenderedText$TextRenderBatch;
.super Ljava/lang/Object;
.source "RenderedText.java"

# interfaces
.implements La/b/a/o/m/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/watabou/noosa/RenderedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextRenderBatch"
.end annotation


# static fields
.field public static buffers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static textBeingRendered:Lcom/watabou/noosa/RenderedText;

.field public static vertices:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 1
    sput-object v0, Lcom/watabou/noosa/RenderedText$TextRenderBatch;->vertices:[F

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/watabou/noosa/RenderedText$TextRenderBatch;->buffers:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/watabou/noosa/RenderedText$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
