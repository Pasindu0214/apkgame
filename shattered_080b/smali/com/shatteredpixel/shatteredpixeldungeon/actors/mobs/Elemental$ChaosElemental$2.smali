.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$ChaosElemental$2;
.super Ljava/lang/Object;
.source "Elemental.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$ChaosElemental;->rangedProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$ChaosElemental;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$ChaosElemental;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$ChaosElemental$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$ChaosElemental;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$ChaosElemental$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$ChaosElemental;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    return-void
.end method
