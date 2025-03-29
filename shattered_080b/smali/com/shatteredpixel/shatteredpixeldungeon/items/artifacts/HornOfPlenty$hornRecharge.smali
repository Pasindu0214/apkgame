.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty$hornRecharge;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;
.source "HornOfPlenty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "hornRecharge"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty$hornRecharge;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/HornOfPlenty;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;)V

    return-void
.end method
