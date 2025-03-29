.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;
.super Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Library"
.end annotation


# instance fields
.field public b:La/b/a/r/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/i<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$a;-><init>(J)V

    .line 2
    new-instance p1, La/b/a/r/i;

    invoke-direct {p1}, La/b/a/r/i;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->b:La/b/a/r/i;

    return-void
.end method

.method public static native doneFreeType(J)V
.end method

.method public static native newMemoryFace(JLjava/nio/ByteBuffer;II)J
.end method

.method public static native strokerNew(J)J
.end method
